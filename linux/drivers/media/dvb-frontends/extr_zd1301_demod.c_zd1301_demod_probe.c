
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct zd1301_demod_platform_data {int dummy; } ;
struct TYPE_11__ {struct zd1301_demod_dev* demodulator_priv; int ops; } ;
struct TYPE_9__ {TYPE_2__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int * algo_data; int * algo; int name; } ;
struct zd1301_demod_dev {TYPE_3__ frontend; TYPE_4__ adapter; int gain; struct platform_device* pdev; } ;
struct TYPE_13__ {TYPE_2__* parent; struct zd1301_demod_platform_data* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_10__ {int driver; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (TYPE_6__*,char*,...) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int dev_info (TYPE_6__*,char*) ;
 int i2c_add_adapter (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct zd1301_demod_dev*) ;
 int kfree (struct zd1301_demod_dev*) ;
 struct zd1301_demod_dev* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct zd1301_demod_dev*) ;
 int strscpy (int ,char*,int) ;
 int zd1301_demod_gain ;
 int zd1301_demod_i2c_algorithm ;
 int zd1301_demod_ops ;
 int zd1301_demod_wreg (struct zd1301_demod_dev*,int,int) ;

__attribute__((used)) static int zd1301_demod_probe(struct platform_device *pdev)
{
 struct zd1301_demod_dev *dev;
 struct zd1301_demod_platform_data *pdata = pdev->dev.platform_data;
 int ret;

 dev_dbg(&pdev->dev, "\n");

 if (!pdata) {
  ret = -EINVAL;
  dev_err(&pdev->dev, "cannot proceed without platform data\n");
  goto err;
 }
 if (!pdev->dev.parent->driver) {
  ret = -EINVAL;
  dev_dbg(&pdev->dev, "no parent device\n");
  goto err;
 }

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }


 dev->pdev = pdev;
 dev->gain = zd1301_demod_gain;


 ret = zd1301_demod_wreg(dev, 0x6840, 0x21);
 if (ret)
  goto err_kfree;
 ret = zd1301_demod_wreg(dev, 0x6a38, 0x07);
 if (ret)
  goto err_kfree;


 strscpy(dev->adapter.name, "ZyDAS ZD1301 demod",
  sizeof(dev->adapter.name));
 dev->adapter.algo = &zd1301_demod_i2c_algorithm;
 dev->adapter.algo_data = ((void*)0);
 dev->adapter.dev.parent = pdev->dev.parent;
 i2c_set_adapdata(&dev->adapter, dev);
 ret = i2c_add_adapter(&dev->adapter);
 if (ret) {
  dev_err(&pdev->dev, "I2C adapter add failed %d\n", ret);
  goto err_kfree;
 }


 memcpy(&dev->frontend.ops, &zd1301_demod_ops, sizeof(dev->frontend.ops));
 dev->frontend.demodulator_priv = dev;
 platform_set_drvdata(pdev, dev);
 dev_info(&pdev->dev, "ZyDAS ZD1301 demod attached\n");

 return 0;
err_kfree:
 kfree(dev);
err:
 dev_dbg(&pdev->dev, "failed=%d\n", ret);
 return ret;
}

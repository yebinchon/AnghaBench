
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {TYPE_2__* parent; struct device_node* of_node; } ;
struct i2c_adapter {TYPE_1__ dev; int class; int * algo; int owner; int name; } ;
struct fimc_is_i2c {struct i2c_adapter adapter; int clock; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_SPD ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 struct fimc_is_i2c* devm_kzalloc (TYPE_2__*,int,int ) ;
 int fimc_is_i2c_algorithm ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int platform_set_drvdata (struct platform_device*,struct fimc_is_i2c*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_suspend_ignore_children (TYPE_1__*,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int fimc_is_i2c_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct fimc_is_i2c *isp_i2c;
 struct i2c_adapter *i2c_adap;
 int ret;

 isp_i2c = devm_kzalloc(&pdev->dev, sizeof(*isp_i2c), GFP_KERNEL);
 if (!isp_i2c)
  return -ENOMEM;

 isp_i2c->clock = devm_clk_get(&pdev->dev, "i2c_isp");
 if (IS_ERR(isp_i2c->clock)) {
  dev_err(&pdev->dev, "failed to get the clock\n");
  return PTR_ERR(isp_i2c->clock);
 }

 i2c_adap = &isp_i2c->adapter;
 i2c_adap->dev.of_node = node;
 i2c_adap->dev.parent = &pdev->dev;
 strscpy(i2c_adap->name, "exynos4x12-isp-i2c", sizeof(i2c_adap->name));
 i2c_adap->owner = THIS_MODULE;
 i2c_adap->algo = &fimc_is_i2c_algorithm;
 i2c_adap->class = I2C_CLASS_SPD;

 platform_set_drvdata(pdev, isp_i2c);
 pm_runtime_enable(&pdev->dev);

 ret = i2c_add_adapter(i2c_adap);
 if (ret < 0)
  goto err_pm_dis;
 pm_suspend_ignore_children(&i2c_adap->dev, 0);
 return 0;

err_pm_dis:
 pm_runtime_disable(&pdev->dev);
 return ret;
}

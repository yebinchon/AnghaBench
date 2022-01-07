
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct it913x_dev {int role; int active; int regmap; struct platform_device* pdev; } ;
struct dvb_frontend {struct it913x_dev* tuner_priv; } ;


 scalar_t__ IT913X_ROLE_DUAL_MASTER ;
 int dev_dbg (int *,char*,int,...) ;
 int regmap_bulk_write (int ,int,char*,int) ;

__attribute__((used)) static int it913x_sleep(struct dvb_frontend *fe)
{
 struct it913x_dev *dev = fe->tuner_priv;
 struct platform_device *pdev = dev->pdev;
 int ret, len;

 dev_dbg(&pdev->dev, "role %u\n", dev->role);

 dev->active = 0;

 ret = regmap_bulk_write(dev->regmap, 0x80ec40, "\x00", 1);
 if (ret)
  goto err;





 if (dev->role == IT913X_ROLE_DUAL_MASTER)
  len = 4;
 else
  len = 15;

 dev_dbg(&pdev->dev, "role %u, len %d\n", dev->role, len);

 ret = regmap_bulk_write(dev->regmap, 0x80ec02,
   "\x3f\x1f\x3f\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00",
   len);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x80ec12, "\x00\x00\x00\x00", 4);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x80ec17,
   "\x00\x00\x00\x00\x00\x00\x00\x00\x00", 9);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x80ec22,
   "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00", 10);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x80ec20, "\x00", 1);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x80ec3f, "\x01", 1);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&pdev->dev, "failed %d\n", ret);
 return ret;
}

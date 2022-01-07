
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1301_demod_dev {int adapter; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct zd1301_demod_dev*) ;
 struct zd1301_demod_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int zd1301_demod_remove(struct platform_device *pdev)
{
 struct zd1301_demod_dev *dev = platform_get_drvdata(pdev);

 dev_dbg(&pdev->dev, "\n");

 i2c_del_adapter(&dev->adapter);
 kfree(dev);

 return 0;
}

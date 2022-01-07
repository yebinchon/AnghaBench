
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cros_ec_dev {int class_dev; int dev; } ;


 struct cros_ec_dev* dev_get_drvdata (int *) ;
 int device_unregister (int *) ;
 int mfd_remove_devices (int ) ;

__attribute__((used)) static int ec_device_remove(struct platform_device *pdev)
{
 struct cros_ec_dev *ec = dev_get_drvdata(&pdev->dev);

 mfd_remove_devices(ec->dev);
 device_unregister(&ec->class_dev);
 return 0;
}

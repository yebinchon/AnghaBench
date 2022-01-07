
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dummy; } ;
struct axp20x_dev {int dummy; } ;


 int axp20x_device_remove (struct axp20x_dev*) ;
 struct axp20x_dev* sunxi_rsb_device_get_drvdata (struct sunxi_rsb_device*) ;

__attribute__((used)) static int axp20x_rsb_remove(struct sunxi_rsb_device *rdev)
{
 struct axp20x_dev *axp20x = sunxi_rsb_device_get_drvdata(rdev);

 return axp20x_device_remove(axp20x);
}

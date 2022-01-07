
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;
struct device {int dummy; } ;


 struct wm831x* dev_get_drvdata (struct device*) ;
 int wm831x_device_suspend (struct wm831x*) ;

__attribute__((used)) static int wm831x_i2c_suspend(struct device *dev)
{
 struct wm831x *wm831x = dev_get_drvdata(dev);

 return wm831x_device_suspend(wm831x);
}

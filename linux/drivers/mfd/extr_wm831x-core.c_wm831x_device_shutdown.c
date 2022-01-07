
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; scalar_t__ soft_shutdown; } ;


 int WM831X_CHIP_ON ;
 int WM831X_POWER_STATE ;
 int dev_info (int ,char*) ;
 int wm831x_set_bits (struct wm831x*,int ,int ,int ) ;

void wm831x_device_shutdown(struct wm831x *wm831x)
{
 if (wm831x->soft_shutdown) {
  dev_info(wm831x->dev, "Initiating shutdown...\n");
  wm831x_set_bits(wm831x, WM831X_POWER_STATE, WM831X_CHIP_ON, 0);
 }
}

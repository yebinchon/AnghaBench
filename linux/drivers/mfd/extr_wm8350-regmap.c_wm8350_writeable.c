
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int unlocked; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int writable; } ;


 unsigned int WM8350_BATTERY_CHARGER_CONTROL_1 ;
 unsigned int WM8350_BATTERY_CHARGER_CONTROL_3 ;
 unsigned int WM8350_GPIO_FUNCTION_SELECT_1 ;
 unsigned int WM8350_GPIO_FUNCTION_SELECT_4 ;
 struct wm8350* dev_get_drvdata (struct device*) ;
 TYPE_1__* wm8350_reg_io_map ;

__attribute__((used)) static bool wm8350_writeable(struct device *dev, unsigned int reg)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);

 if (!wm8350->unlocked) {
  if ((reg >= WM8350_GPIO_FUNCTION_SELECT_1 &&
       reg <= WM8350_GPIO_FUNCTION_SELECT_4) ||
      (reg >= WM8350_BATTERY_CHARGER_CONTROL_1 &&
       reg <= WM8350_BATTERY_CHARGER_CONTROL_3))
   return 0;
 }

 return wm8350_reg_io_map[reg].writable;
}

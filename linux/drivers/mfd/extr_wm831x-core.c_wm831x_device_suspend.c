
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; scalar_t__ charger_irq_wake; } ;


 int WM831X_CHG_BATT_COLD_EINT ;
 int WM831X_CHG_BATT_FAIL_EINT ;
 int WM831X_CHG_BATT_HOT_EINT ;
 int WM831X_CHG_END_EINT ;
 int WM831X_CHG_MODE_EINT ;
 int WM831X_CHG_OV_EINT ;
 int WM831X_CHG_START_EINT ;
 int WM831X_CHG_TO_EINT ;
 int WM831X_INTERRUPT_STATUS_2 ;
 int WM831X_INTERRUPT_STATUS_2_MASK ;
 int dev_info (int ,char*,int) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_write (struct wm831x*,int ,int) ;

int wm831x_device_suspend(struct wm831x *wm831x)
{
 int reg, mask;






 if (wm831x->charger_irq_wake) {
  reg = wm831x_reg_read(wm831x, WM831X_INTERRUPT_STATUS_2_MASK);

  mask = WM831X_CHG_BATT_HOT_EINT |
   WM831X_CHG_BATT_COLD_EINT |
   WM831X_CHG_BATT_FAIL_EINT |
   WM831X_CHG_OV_EINT | WM831X_CHG_END_EINT |
   WM831X_CHG_TO_EINT | WM831X_CHG_MODE_EINT |
   WM831X_CHG_START_EINT;


  if (reg & mask)
   reg = wm831x_reg_read(wm831x,
           WM831X_INTERRUPT_STATUS_2);

  if (reg & mask) {
   dev_info(wm831x->dev,
     "Acknowledging masked charger IRQs: %x\n",
     reg & mask);
   wm831x_reg_write(wm831x, WM831X_INTERRUPT_STATUS_2,
      reg & mask);
  }
 }

 return 0;
}

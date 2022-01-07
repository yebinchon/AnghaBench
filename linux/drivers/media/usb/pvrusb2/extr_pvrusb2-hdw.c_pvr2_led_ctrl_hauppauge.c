
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;


 int pvr2_hdw_gpio_chg_dir (struct pvr2_hdw*,int,int) ;
 int pvr2_hdw_gpio_chg_out (struct pvr2_hdw*,int,int) ;

__attribute__((used)) static void pvr2_led_ctrl_hauppauge(struct pvr2_hdw *hdw, int onoff)
{






 if (onoff) {
  pvr2_hdw_gpio_chg_dir(hdw, 0xffffffff, 0x00000481);
 } else {
  pvr2_hdw_gpio_chg_dir(hdw, 0xffffffff, 0x00000401);
 }
 pvr2_hdw_gpio_chg_out(hdw, 0xffffffff, 0x00000000);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rc_dev {int input_dev; int dev; } ;


 int BTN_LEFT ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int dev_dbg (int *,char*,int,int,char*,char*) ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,int) ;

__attribute__((used)) static void ir_mce_kbd_process_mouse_data(struct rc_dev *dev, u32 scancode)
{

 u8 xdata = (scancode >> 7) & 0x7f;
 u8 ydata = (scancode >> 14) & 0x7f;
 int x, y;

 bool right = scancode & 0x40;
 bool left = scancode & 0x20;

 if (xdata & 0x40)
  x = -((~xdata & 0x7f) + 1);
 else
  x = xdata;

 if (ydata & 0x40)
  y = -((~ydata & 0x7f) + 1);
 else
  y = ydata;

 dev_dbg(&dev->dev, "mouse: x = %d, y = %d, btns = %s%s\n",
  x, y, left ? "L" : "", right ? "R" : "");

 input_report_rel(dev->input_dev, REL_X, x);
 input_report_rel(dev->input_dev, REL_Y, y);

 input_report_key(dev->input_dev, BTN_LEFT, left);
 input_report_key(dev->input_dev, BTN_RIGHT, right);
}

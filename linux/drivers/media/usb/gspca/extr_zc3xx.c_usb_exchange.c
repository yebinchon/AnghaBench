
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_action {int req; int val; int idx; } ;
struct gspca_dev {int dummy; } ;


 int i2c_write (struct gspca_dev*,int,int,int) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void usb_exchange(struct gspca_dev *gspca_dev,
   const struct usb_action *action)
{
 while (action->req) {
  switch (action->req) {
  case 0xa0:
   reg_w(gspca_dev, action->val, action->idx);
   break;
  case 0xa1:
   reg_r(gspca_dev, action->idx);
   break;
  case 0xaa:
   i2c_write(gspca_dev,
      action->val,
      action->idx & 0xff,
      action->idx >> 8);
   break;
  case 0xbb:
   i2c_write(gspca_dev,
      action->idx >> 8,
      action->idx & 0xff,
      action->val);
   break;
  default:

   msleep(action->idx);
   break;
  }
  action++;
  msleep(1);
 }
}

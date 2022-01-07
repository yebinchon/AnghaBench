
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int* usb_buf; } ;


 int TP6800_R18_GPIO_DATA ;
 int reg_r (struct gspca_dev*,int ) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void set_led(struct gspca_dev *gspca_dev, int on)
{
 u8 data;

 reg_r(gspca_dev, TP6800_R18_GPIO_DATA);
 data = gspca_dev->usb_buf[0];
 if (on)
  data &= ~0x40;
 else
  data |= 0x40;
 reg_w(gspca_dev, TP6800_R18_GPIO_DATA, data);
}

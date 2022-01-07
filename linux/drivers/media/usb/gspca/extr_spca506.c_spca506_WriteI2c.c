
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; int dev; } ;
typedef int __u16 ;


 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (int ,int,int ,int) ;

__attribute__((used)) static void spca506_WriteI2c(struct gspca_dev *gspca_dev, __u16 valeur,
        __u16 reg)
{
 int retry = 60;

 reg_w(gspca_dev->dev, 0x07, reg, 0x0001);
 reg_w(gspca_dev->dev, 0x07, valeur, 0x0000);
 while (retry--) {
  reg_r(gspca_dev, 0x07, 0x0003, 2);
  if ((gspca_dev->usb_buf[0] | gspca_dev->usb_buf[1]) == 0x00)
   break;
 }
}

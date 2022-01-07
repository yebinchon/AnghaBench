
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__* usb_buf; int present; } ;


 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 int retry = 50;

 if (!gspca_dev->present)
  return;
 reg_w_val(gspca_dev, 0x0000, 0x00);
 reg_r(gspca_dev, 0x0002, 1);
 reg_w_val(gspca_dev, 0x0053, 0x00);

 while (retry--) {

  reg_r(gspca_dev, 0x0053, 1);
  if (gspca_dev->usb_buf[0] == 0)
   break;
 }
 reg_w_val(gspca_dev, 0x0000, 0x00);
 reg_r(gspca_dev, 0x0002, 1);

 reg_w_val(gspca_dev, 0x0010, 0x00);
 reg_r(gspca_dev, 0x0033, 1);
 reg_w_val(gspca_dev, 0x00fc, 0xe0);
}

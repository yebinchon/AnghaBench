
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {scalar_t__* usb_buf; } ;


 scalar_t__ BRIDGE_TP6800 ;
 int TP6800_R11_SIF_CONTROL ;
 int TP6800_R13_SIF_TX_DATA ;
 int TP6800_R19_SIF_ADDR_S2 ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int ) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int i2c_w(struct gspca_dev *gspca_dev, u8 index, u8 value)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, TP6800_R11_SIF_CONTROL, 0x00);
 reg_w(gspca_dev, TP6800_R19_SIF_ADDR_S2, index);
 reg_w(gspca_dev, TP6800_R13_SIF_TX_DATA, value);
 reg_w(gspca_dev, TP6800_R11_SIF_CONTROL, 0x01);
 if (sd->bridge == BRIDGE_TP6800)
  return 0;
 msleep(5);
 reg_r(gspca_dev, TP6800_R11_SIF_CONTROL);
 if (gspca_dev->usb_buf[0] == 0)
  return 0;
 reg_w(gspca_dev, TP6800_R11_SIF_CONTROL, 0x00);
 return -1;
}

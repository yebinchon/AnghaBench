
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int* usb_buf; } ;


 scalar_t__ BRIDGE_TP6800 ;
 int TP6800_R11_SIF_CONTROL ;
 int TP6800_R14_SIF_RX_DATA ;
 int TP6800_R19_SIF_ADDR_S2 ;
 int TP6800_R1B_SIF_RX_DATA2 ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int ) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int i2c_r(struct gspca_dev *gspca_dev, u8 index, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int v;

 reg_w(gspca_dev, TP6800_R19_SIF_ADDR_S2, index);
 reg_w(gspca_dev, TP6800_R11_SIF_CONTROL, 0x02);
 msleep(5);
 reg_r(gspca_dev, TP6800_R14_SIF_RX_DATA);
 v = gspca_dev->usb_buf[0];
 if (sd->bridge == BRIDGE_TP6800)
  return v;
 if (len > 1) {
  reg_r(gspca_dev, TP6800_R1B_SIF_RX_DATA2);
  v |= (gspca_dev->usb_buf[0] << 8);
 }
 reg_r(gspca_dev, TP6800_R11_SIF_CONTROL);
 if (gspca_dev->usb_buf[0] == 0)
  return v;
 reg_w(gspca_dev, TP6800_R11_SIF_CONTROL, 0x00);
 return -1;
}

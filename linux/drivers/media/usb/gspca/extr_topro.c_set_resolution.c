
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ sensor; int jpegqual; int gamma; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int ARRAY_SIZE (int ) ;
 int CX0342_AUTO_ADC_CALIB ;
 int CX0342_EXPO_LINE_H ;
 int CX0342_EXPO_LINE_L ;
 int CX0342_SYS_CTRL_0 ;
 size_t SENSOR_CX0342 ;
 scalar_t__ SENSOR_SOI763A ;
 int TP6800_R21_ENDP_1_CTL ;
 int TP6800_R3F_FRAME_RATE ;
 int TP6800_R5D_DEMOSAIC_CFG ;
 int TP6800_R78_FORMAT ;
 int bulk_w (struct gspca_dev*,int,int ,int ) ;
 int * color_gain ;
 int i2c_w (struct gspca_dev*,int ,int) ;
 int msleep (int) ;
 int reg_w (struct gspca_dev*,int ,int) ;
 int setgamma (struct gspca_dev*,int ) ;
 int setquality (struct gspca_dev*,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void set_resolution(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x00);
 if (gspca_dev->pixfmt.width == 320) {
  reg_w(gspca_dev, TP6800_R3F_FRAME_RATE, 0x06);
  msleep(100);
  i2c_w(gspca_dev, CX0342_AUTO_ADC_CALIB, 0x01);
  msleep(100);
  reg_w(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x03);
  reg_w(gspca_dev, TP6800_R78_FORMAT, 0x01);
  reg_w(gspca_dev, TP6800_R5D_DEMOSAIC_CFG, 0x0d);
  i2c_w(gspca_dev, CX0342_EXPO_LINE_L, 0x37);
  i2c_w(gspca_dev, CX0342_EXPO_LINE_H, 0x01);
 } else {
  reg_w(gspca_dev, TP6800_R3F_FRAME_RATE, 0x05);
  msleep(100);
  i2c_w(gspca_dev, CX0342_AUTO_ADC_CALIB, 0x01);
  msleep(100);
  reg_w(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x03);
  reg_w(gspca_dev, TP6800_R78_FORMAT, 0x00);
  reg_w(gspca_dev, TP6800_R5D_DEMOSAIC_CFG, 0x09);
  i2c_w(gspca_dev, CX0342_EXPO_LINE_L, 0xcf);
  i2c_w(gspca_dev, CX0342_EXPO_LINE_H, 0x00);
 }
 i2c_w(gspca_dev, CX0342_SYS_CTRL_0, 0x01);
 bulk_w(gspca_dev, 0x03, color_gain[SENSOR_CX0342],
    ARRAY_SIZE(color_gain[0]));
 setgamma(gspca_dev, v4l2_ctrl_g_ctrl(sd->gamma));
 if (sd->sensor == SENSOR_SOI763A)
  setquality(gspca_dev, v4l2_ctrl_g_ctrl(sd->jpegqual));
}

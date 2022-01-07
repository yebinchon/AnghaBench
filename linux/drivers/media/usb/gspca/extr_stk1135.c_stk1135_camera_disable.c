
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 scalar_t__ STK1135_REG_CIEPO ;
 scalar_t__ STK1135_REG_GCTRL ;
 scalar_t__ STK1135_REG_SCTRL ;
 scalar_t__ STK1135_REG_SENSO ;
 scalar_t__ STK1135_REG_TMGEN ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 int reg_w_mask (struct gspca_dev*,scalar_t__,int,int) ;
 int sensor_write_mask (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void stk1135_camera_disable(struct gspca_dev *gspca_dev)
{

 reg_w(gspca_dev, STK1135_REG_CIEPO + 2, 0x00);
 reg_w(gspca_dev, STK1135_REG_CIEPO + 3, 0x00);

 reg_w_mask(gspca_dev, STK1135_REG_SCTRL, 0x00, 0x80);


 sensor_write_mask(gspca_dev, 0x00d, 0x0004, 0x000c);


 reg_w_mask(gspca_dev, STK1135_REG_SENSO + 2, 0x00, 0x01);

 reg_w(gspca_dev, STK1135_REG_TMGEN, 0x00);

 reg_w(gspca_dev, STK1135_REG_SENSO + 1, 0x20);

 reg_w(gspca_dev, STK1135_REG_SENSO, 0x00);


 reg_w(gspca_dev, STK1135_REG_GCTRL, 0x49);
}

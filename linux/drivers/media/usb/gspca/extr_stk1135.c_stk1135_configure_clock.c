
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 scalar_t__ STK1135_REG_PLLFD ;
 scalar_t__ STK1135_REG_SENSO ;
 scalar_t__ STK1135_REG_SICTL ;
 scalar_t__ STK1135_REG_TCP1 ;
 scalar_t__ STK1135_REG_TMGEN ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void stk1135_configure_clock(struct gspca_dev *gspca_dev)
{

 reg_w(gspca_dev, STK1135_REG_TMGEN, 0x12);


 reg_w(gspca_dev, STK1135_REG_TCP1 + 0, 0x41);
 reg_w(gspca_dev, STK1135_REG_TCP1 + 1, 0x00);
 reg_w(gspca_dev, STK1135_REG_TCP1 + 2, 0x00);
 reg_w(gspca_dev, STK1135_REG_TCP1 + 3, 0x00);


 reg_w(gspca_dev, STK1135_REG_SENSO + 0, 0x10);

 reg_w(gspca_dev, STK1135_REG_SENSO + 1, 0x00);

 reg_w(gspca_dev, STK1135_REG_SENSO + 3, 0x07);

 reg_w(gspca_dev, STK1135_REG_PLLFD, 0x06);

 reg_w(gspca_dev, STK1135_REG_TMGEN, 0x80);

 reg_w(gspca_dev, STK1135_REG_SENSO + 2, 0x04);


 reg_w(gspca_dev, STK1135_REG_SICTL + 2, 0x1f);


 udelay(1000);
}

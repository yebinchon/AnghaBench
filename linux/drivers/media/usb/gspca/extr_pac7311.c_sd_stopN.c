
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x27, 0x80);
 reg_w(gspca_dev, 0x28, 0xca);
 reg_w(gspca_dev, 0x29, 0x53);
 reg_w(gspca_dev, 0x2a, 0x0e);
 reg_w(gspca_dev, 0xff, 0x01);
 reg_w(gspca_dev, 0x3e, 0x20);
 reg_w(gspca_dev, 0x78, 0x44);
 reg_w(gspca_dev, 0x78, 0x44);
 reg_w(gspca_dev, 0x78, 0x44);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int pac207_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setcontrol(struct gspca_dev *gspca_dev, u16 reg, u16 val)
{
 pac207_write_reg(gspca_dev, reg, val);
 pac207_write_reg(gspca_dev, 0x13, 0x01);
 pac207_write_reg(gspca_dev, 0x1c, 0x01);
}

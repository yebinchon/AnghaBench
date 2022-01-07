
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_write (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev, s32 val)
{
 reg_write(gspca_dev, 0x00, 0x00, (val >> 8) & 0xff);
 reg_write(gspca_dev, 0x00, 0x01, val & 0xff);
}

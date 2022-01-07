
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_write (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 brightness)
{

 reg_write(gspca_dev, 0x8651, brightness);
 reg_write(gspca_dev, 0x8652, brightness);
 reg_write(gspca_dev, 0x8653, brightness);
 reg_write(gspca_dev, 0x8654, brightness);
}

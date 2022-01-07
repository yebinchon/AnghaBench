
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_write (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 brightness)
{
 reg_write(gspca_dev, 0x05, 0x00, (255 - brightness) >> 6);
 reg_write(gspca_dev, 0x05, 0x01, (255 - brightness) << 2);
}

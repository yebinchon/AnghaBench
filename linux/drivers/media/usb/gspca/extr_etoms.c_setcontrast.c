
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __u8 ;
typedef int RGBG ;


 int ET_G_RED ;
 int memset (int*,int ,int) ;
 int reg_w (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev, s32 val)
{
 __u8 RGBG[] = { 0x80, 0x80, 0x80, 0x80, 0x00, 0x00 };

 memset(RGBG, val, sizeof(RGBG) - 2);
 reg_w(gspca_dev, ET_G_RED, RGBG, 6);
}

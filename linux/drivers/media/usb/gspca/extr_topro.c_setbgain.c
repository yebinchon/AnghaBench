
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int CX0342_RAW_BGAIN_H ;
 int CX0342_RAW_BGAIN_L ;
 int CX0342_SYS_CTRL_0 ;
 int i2c_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void setbgain(struct gspca_dev *gspca_dev, s32 bgain)
{
 i2c_w(gspca_dev, CX0342_RAW_BGAIN_H, bgain >> 8);
 i2c_w(gspca_dev, CX0342_RAW_BGAIN_L, bgain);
 i2c_w(gspca_dev, CX0342_SYS_CTRL_0, 0x80);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int CX0342_RAW_RGAIN_H ;
 int CX0342_RAW_RGAIN_L ;
 int CX0342_SYS_CTRL_0 ;
 int i2c_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void setrgain(struct gspca_dev *gspca_dev, s32 rgain)
{
 i2c_w(gspca_dev, CX0342_RAW_RGAIN_H, rgain >> 8);
 i2c_w(gspca_dev, CX0342_RAW_RGAIN_L, rgain);
 i2c_w(gspca_dev, CX0342_SYS_CTRL_0, 0x80);
}

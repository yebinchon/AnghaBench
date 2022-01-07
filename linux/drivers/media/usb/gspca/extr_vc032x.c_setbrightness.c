
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 u8 data;

 data = val;
 if (data >= 0x80)
  data &= 0x7f;
 else
  data = 0xff ^ data;
 i2c_write(gspca_dev, 0x98, &data, 1);
}

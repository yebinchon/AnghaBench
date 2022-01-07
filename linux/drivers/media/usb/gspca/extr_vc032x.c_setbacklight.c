
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setbacklight(struct gspca_dev *gspca_dev, s32 val)
{
 u16 v;
 u8 data;

 data = (val << 4) | 0x0f;
 i2c_write(gspca_dev, 0xaa, &data, 1);
 v = 613 + 12 * val;
 data = v >> 8;
 i2c_write(gspca_dev, 0xc4, &data, 1);
 data = v;
 i2c_write(gspca_dev, 0xc5, &data, 1);
 v = 1093 - 12 * val;
 data = v >> 8;
 i2c_write(gspca_dev, 0xc6, &data, 1);
 data = v;
 i2c_write(gspca_dev, 0xc7, &data, 1);
 v = 342 + 9 * val;
 data = v >> 8;
 i2c_write(gspca_dev, 0xc8, &data, 1);
 data = v;
 i2c_write(gspca_dev, 0xc9, &data, 1);
 v = 702 - 9 * val;
 data = v >> 8;
 i2c_write(gspca_dev, 0xca, &data, 1);
 data = v;
 i2c_write(gspca_dev, 0xcb, &data, 1);
}

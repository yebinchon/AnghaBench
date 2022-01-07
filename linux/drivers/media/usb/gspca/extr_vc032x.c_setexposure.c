
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int i2c_write (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val)
{
 u8 data;

 data = val >> 8;
 i2c_write(gspca_dev, 0x1a, &data, 1);
 data = val;
 i2c_write(gspca_dev, 0x1b, &data, 1);
}

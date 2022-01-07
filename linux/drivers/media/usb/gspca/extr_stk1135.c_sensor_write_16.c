
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int sensor_write_8 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sensor_write_16(struct gspca_dev *gspca_dev, u8 addr, u16 data)
{
 sensor_write_8(gspca_dev, addr, data >> 8);
 sensor_write_8(gspca_dev, 0xf1, data & 0xff);
}

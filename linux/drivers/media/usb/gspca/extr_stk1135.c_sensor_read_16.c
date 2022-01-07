
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int sensor_read_8 (struct gspca_dev*,int) ;

__attribute__((used)) static u16 sensor_read_16(struct gspca_dev *gspca_dev, u8 addr)
{
 return (sensor_read_8(gspca_dev, addr) << 8) |
  sensor_read_8(gspca_dev, 0xf1);
}

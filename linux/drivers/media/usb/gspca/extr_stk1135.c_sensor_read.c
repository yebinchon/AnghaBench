
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int sensor_read_16 (struct gspca_dev*,int) ;
 int sensor_set_page (struct gspca_dev*,int) ;

__attribute__((used)) static u16 sensor_read(struct gspca_dev *gspca_dev, u16 reg)
{
 sensor_set_page(gspca_dev, reg >> 8);
 return sensor_read_16(gspca_dev, reg & 0xff);
}

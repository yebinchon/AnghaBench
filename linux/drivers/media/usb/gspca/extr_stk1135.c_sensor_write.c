
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int sensor_set_page (struct gspca_dev*,int) ;
 int sensor_write_16 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sensor_write(struct gspca_dev *gspca_dev, u16 reg, u16 val)
{
 sensor_set_page(gspca_dev, reg >> 8);
 sensor_write_16(gspca_dev, reg & 0xff, val);
}

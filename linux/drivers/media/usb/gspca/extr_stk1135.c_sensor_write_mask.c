
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int sensor_read (struct gspca_dev*,int) ;
 int sensor_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sensor_write_mask(struct gspca_dev *gspca_dev,
   u16 reg, u16 val, u16 mask)
{
 val = (sensor_read(gspca_dev, reg) & ~mask) | (val & mask);
 sensor_write(gspca_dev, reg, val);
}

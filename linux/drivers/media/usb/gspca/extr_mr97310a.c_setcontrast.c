
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sensor_write1 (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev, s32 val)
{
 sensor_write1(gspca_dev, 0x1c, val);
}

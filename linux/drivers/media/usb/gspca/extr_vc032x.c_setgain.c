
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int i2c_write (struct gspca_dev*,int,int *,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, u8 val)
{
 i2c_write(gspca_dev, 0x15, &val, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int i2c_write (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static void setwb(struct gspca_dev *gspca_dev)
{

 static const u8 data[2] = {0x00, 0x00};

 i2c_write(gspca_dev, 0x16, &data[0], 1);
 i2c_write(gspca_dev, 0x18, &data[1], 1);
}

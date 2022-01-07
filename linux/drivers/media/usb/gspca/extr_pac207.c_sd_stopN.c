
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 scalar_t__ led_invert ;
 int pac207_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 u8 mode;


 if (led_invert)
  mode = 0x02;
 else
  mode = 0x00;
 pac207_write_reg(gspca_dev, 0x40, 0x00);
 pac207_write_reg(gspca_dev, 0x41, mode);
 pac207_write_reg(gspca_dev, 0x0f, 0x00);
}

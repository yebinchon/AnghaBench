
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__ usb_err; } ;
typedef int __u8 ;


 int i2c_w (struct gspca_dev*,int const*) ;

__attribute__((used)) static void i2c_w_vector(struct gspca_dev *gspca_dev,
   const __u8 buffer[][8], int len)
{
 for (;;) {
  if (gspca_dev->usb_err < 0)
   return;
  i2c_w(gspca_dev, *buffer);
  len -= 8;
  if (len <= 0)
   break;
  buffer++;
 }
}

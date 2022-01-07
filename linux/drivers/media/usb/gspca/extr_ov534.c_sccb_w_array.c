
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_read (struct gspca_dev*,int const) ;
 int sccb_reg_write (struct gspca_dev*,int const,int const) ;

__attribute__((used)) static void sccb_w_array(struct gspca_dev *gspca_dev,
   const u8 (*data)[2], int len)
{
 while (--len >= 0) {
  if ((*data)[0] != 0xff) {
   sccb_reg_write(gspca_dev, (*data)[0], (*data)[1]);
  } else {
   sccb_reg_read(gspca_dev, (*data)[1]);
   sccb_reg_write(gspca_dev, 0xff, 0x00);
  }
  data++;
 }
}

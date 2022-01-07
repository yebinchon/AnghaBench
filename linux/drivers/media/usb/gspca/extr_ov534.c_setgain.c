
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, s32 val)
{
 switch (val & 0x30) {
 case 0x00:
  val &= 0x0f;
  break;
 case 0x10:
  val &= 0x0f;
  val |= 0x30;
  break;
 case 0x20:
  val &= 0x0f;
  val |= 0x70;
  break;
 default:

  val &= 0x0f;
  val |= 0xf0;
  break;
 }
 sccb_reg_write(gspca_dev, 0x00, val);
}

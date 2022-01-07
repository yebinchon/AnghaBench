
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sccb_read (struct gspca_dev*,int) ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setlightfreq(struct gspca_dev *gspca_dev, s32 freq)
{
 u8 val;

 val = sccb_read(gspca_dev, 0x13);
 sccb_write(gspca_dev, 0xff, 0x00);
 if (freq == 0) {
  sccb_write(gspca_dev, 0x13, val & 0xdf);
  return;
 }
 sccb_write(gspca_dev, 0x13, val | 0x20);

 val = sccb_read(gspca_dev, 0x42);
 sccb_write(gspca_dev, 0xff, 0x00);
 if (freq == 1)
  val |= 0x01;
 else
  val &= 0xfe;
 sccb_write(gspca_dev, 0x42, val);
}

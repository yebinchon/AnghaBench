
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sccb_read (struct gspca_dev*,int) ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev, s32 val)
{
 if (val < 0) {
  val = sccb_read(gspca_dev, 0x42);
  sccb_write(gspca_dev, 0xff, 0x00);
  sccb_write(gspca_dev, 0x42, val | 0x40);

  return;
 }
 if (val != 0)
  val = 1 << (val - 1);
 sccb_write(gspca_dev, 0x3f,
   val);
 val = sccb_read(gspca_dev, 0x42);
 sccb_write(gspca_dev, 0xff, 0x00);
 sccb_write(gspca_dev, 0x42, val & 0xbf);
}

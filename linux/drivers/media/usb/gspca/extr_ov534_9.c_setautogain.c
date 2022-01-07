
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 int sccb_read (struct gspca_dev*,int) ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev, s32 autogain)
{
 u8 val;


 val = sccb_read(gspca_dev, 0x13);
 sccb_write(gspca_dev, 0xff, 0x00);
 if (autogain)
  val |= 0x05;
 else
  val &= 0xfa;
 sccb_write(gspca_dev, 0x13, val);
}

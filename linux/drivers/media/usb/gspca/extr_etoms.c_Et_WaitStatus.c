
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {scalar_t__* usb_buf; } ;


 int ET_ClCK ;
 int reg_r (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int Et_WaitStatus(struct gspca_dev *gspca_dev)
{
 int retry = 10;

 while (retry--) {
  reg_r(gspca_dev, ET_ClCK, 1);
  if (gspca_dev->usb_buf[0] != 0)
   return 1;
 }
 return 0;
}

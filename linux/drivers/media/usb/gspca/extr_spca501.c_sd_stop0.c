
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int present; } ;


 int SPCA501_REG_CTLRL ;
 int reg_write (struct gspca_dev*,int ,int,int) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 if (!gspca_dev->present)
  return;
 reg_write(gspca_dev, SPCA501_REG_CTLRL, 0x05, 0x00);
}

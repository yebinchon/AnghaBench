
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int SPCA501_REG_CTLRL ;
 int reg_write (struct gspca_dev*,int ,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{


 reg_write(gspca_dev, SPCA501_REG_CTLRL, 0x01, 0x00);
}

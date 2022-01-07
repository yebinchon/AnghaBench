
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int SPCA501_REG_CCDSP ;
 int reg_write (struct gspca_dev*,int ,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 reg_write(gspca_dev, SPCA501_REG_CCDSP, 0x12, val);
}

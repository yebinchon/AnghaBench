
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sccb_reg_read (struct gspca_dev*,int) ;

__attribute__((used)) static s32 getgain(struct gspca_dev *gspca_dev)
{
 return sccb_reg_read(gspca_dev, 0x00);
}

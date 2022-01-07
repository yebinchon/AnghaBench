
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sccb_reg_write (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev, s32 val)
{
 sccb_reg_write(gspca_dev, 0x91, val);
 sccb_reg_write(gspca_dev, 0x8e, val);
}

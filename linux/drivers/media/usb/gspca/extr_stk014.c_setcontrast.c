
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int set_par (struct gspca_dev*,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev, s32 val)
{
 int parval;

 parval = 0x07000000
  + (val << 16);
 set_par(gspca_dev, parval);
}

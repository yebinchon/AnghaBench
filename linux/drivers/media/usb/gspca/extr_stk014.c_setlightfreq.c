
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int set_par (struct gspca_dev*,int) ;

__attribute__((used)) static void setlightfreq(struct gspca_dev *gspca_dev, s32 val)
{
 set_par(gspca_dev, val == 1
   ? 0x33640000
   : 0x33780000);
}

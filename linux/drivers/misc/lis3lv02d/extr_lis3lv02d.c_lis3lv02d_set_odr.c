
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {int odr_mask; int* odrs; int (* write ) (struct lis3lv02d*,int ,int) ;int (* read ) (struct lis3lv02d*,int ,int*) ;} ;


 int CTRL_REG1 ;
 int EINVAL ;
 int ffs (int) ;
 int hweight_long (int) ;
 int stub1 (struct lis3lv02d*,int ,int*) ;
 int stub2 (struct lis3lv02d*,int ,int) ;

__attribute__((used)) static int lis3lv02d_set_odr(struct lis3lv02d *lis3, int rate)
{
 u8 ctrl;
 int i, len, shift;

 if (!rate)
  return -EINVAL;

 lis3->read(lis3, CTRL_REG1, &ctrl);
 ctrl &= ~lis3->odr_mask;
 len = 1 << hweight_long(lis3->odr_mask);
 shift = ffs(lis3->odr_mask) - 1;

 for (i = 0; i < len; i++)
  if (lis3->odrs[i] == rate) {
   lis3->write(lis3, CTRL_REG1,
     ctrl | (i << shift));
   return 0;
  }
 return -EINVAL;
}

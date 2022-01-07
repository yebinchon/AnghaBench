
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {int odr_mask; int* odrs; int (* read ) (struct lis3lv02d*,int ,int*) ;} ;


 int CTRL_REG1 ;
 int ffs (int) ;
 int stub1 (struct lis3lv02d*,int ,int*) ;

__attribute__((used)) static int lis3lv02d_get_odr(struct lis3lv02d *lis3)
{
 u8 ctrl;
 int shift;

 lis3->read(lis3, CTRL_REG1, &ctrl);
 ctrl &= lis3->odr_mask;
 shift = ffs(lis3->odr_mask) - 1;
 return lis3->odrs[(ctrl >> shift)];
}

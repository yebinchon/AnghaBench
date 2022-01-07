
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {int shift_adj; int (* read ) (struct lis3lv02d*,int,int*) ;} ;
typedef int s16 ;


 int stub1 (struct lis3lv02d*,int,int*) ;
 int stub2 (struct lis3lv02d*,int,int*) ;

__attribute__((used)) static s16 lis331dlh_read_data(struct lis3lv02d *lis3, int reg)
{
 u8 lo, hi;
 int v;

 lis3->read(lis3, reg - 1, &lo);
 lis3->read(lis3, reg, &hi);
 v = (int) ((hi << 8) | lo);

 return (s16) v >> lis3->shift_adj;
}

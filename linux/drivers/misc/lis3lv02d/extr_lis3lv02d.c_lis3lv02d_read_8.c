
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {scalar_t__ (* read ) (struct lis3lv02d*,int,int *) ;} ;
typedef int s8 ;
typedef int s16 ;


 scalar_t__ stub1 (struct lis3lv02d*,int,int *) ;

__attribute__((used)) static s16 lis3lv02d_read_8(struct lis3lv02d *lis3, int reg)
{
 s8 lo;
 if (lis3->read(lis3, reg, &lo) < 0)
  return 0;

 return lo;
}

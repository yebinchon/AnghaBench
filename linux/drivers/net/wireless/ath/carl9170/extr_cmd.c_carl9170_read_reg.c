
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar9170 {int dummy; } ;


 int carl9170_read_mreg (struct ar9170*,int,int *,int *) ;

int carl9170_read_reg(struct ar9170 *ar, u32 reg, u32 *val)
{
 return carl9170_read_mreg(ar, 1, &reg, val);
}

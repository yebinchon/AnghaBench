
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int regr (int) ;
 int regw (int,int) ;

__attribute__((used)) static inline u32 reg_modify(u32 mask, u32 val, u32 offset)
{
 u32 new_val = (regr(offset) & ~mask) | (val & mask);

 regw(new_val, offset);
 return new_val;
}

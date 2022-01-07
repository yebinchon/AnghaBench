
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (int,int) ;

__attribute__((used)) static inline void xgene_set_reg_bits(u32 *var, int pos, int len, u32 val)
{
 u32 mask = GENMASK(pos + len, pos);

 *var &= ~mask;
 *var |= ((val << pos) & mask);
}

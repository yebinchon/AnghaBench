
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (int,int) ;

__attribute__((used)) static inline void xgene_set_bits(u32 *dst, u32 val, u32 start, u32 len)
{
 u32 end = start + len - 1;
 u32 mask = GENMASK(end, start);

 *dst &= ~mask;
 *dst |= (val << start) & mask;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ffs (int) ;

__attribute__((used)) static inline void set_field(u32 *valp, u32 field, u32 mask)
{
 u32 val = *valp;

 val &= ~mask;
 val |= (field << __ffs(mask)) & mask;
 *valp = val;
}

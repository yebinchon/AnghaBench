
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct il_priv {scalar_t__ hw_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32
_il_rd(struct il_priv *il, u32 ofs)
{
 return readl(il->hw_base + ofs);
}

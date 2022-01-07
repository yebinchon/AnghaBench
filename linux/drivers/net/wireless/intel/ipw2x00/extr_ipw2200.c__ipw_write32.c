
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {scalar_t__ hw_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void _ipw_write32(struct ipw_priv *ipw, unsigned long ofs,
  u32 val)
{
 writel(val, ipw->hw_base + ofs);
}

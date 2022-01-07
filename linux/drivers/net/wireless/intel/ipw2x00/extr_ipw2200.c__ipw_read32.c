
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {scalar_t__ hw_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 _ipw_read32(struct ipw_priv *ipw, unsigned long ofs)
{
 return readl(ipw->hw_base + ofs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipw_priv {scalar_t__ hw_base; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 _ipw_read16(struct ipw_priv *ipw, unsigned long ofs)
{
 return readw(ipw->hw_base + ofs);
}

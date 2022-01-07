
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa168_eth_private {scalar_t__ base; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void wrl(struct pxa168_eth_private *pep, int offset, u32 data)
{
 writel_relaxed(data, pep->base + offset);
}

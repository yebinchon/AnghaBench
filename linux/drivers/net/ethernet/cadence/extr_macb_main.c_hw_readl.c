
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {scalar_t__ regs; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 hw_readl(struct macb *bp, int offset)
{
 return readl_relaxed(bp->regs + offset);
}

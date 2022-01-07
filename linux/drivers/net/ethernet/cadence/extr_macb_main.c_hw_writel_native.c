
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {scalar_t__ regs; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_writel_native(struct macb *bp, int offset, u32 value)
{
 __raw_writel(value, bp->regs + offset);
}

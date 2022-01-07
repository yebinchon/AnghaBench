
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {scalar_t__ base; } ;


 scalar_t__ IER ;
 scalar_t__ IMR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ns83820_disable_interrupts(struct ns83820 *dev)
{
 writel(0, dev->base + IMR);
 writel(0, dev->base + IER);
 readl(dev->base + IER);
}

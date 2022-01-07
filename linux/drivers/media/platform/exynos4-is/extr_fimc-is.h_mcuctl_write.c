
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_is {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void mcuctl_write(u32 v, struct fimc_is *is, unsigned int offset)
{
 writel(v, is->regs + offset);
}

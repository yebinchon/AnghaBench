
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axienet_local {scalar_t__ dma_regs; } ;
typedef scalar_t__ off_t ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void axienet_dma_out32(struct axienet_local *lp,
         off_t reg, u32 value)
{
 iowrite32(value, lp->dma_regs + reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct TYPE_2__ {int dmactrlflags; } ;
struct dma_info {TYPE_1__ dma; int core; } ;


 int D64_XC_PD ;
 int DMA64TXREGOFFS (struct dma_info*,int) ;
 int DMA_CTRL_PEN ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int) ;

__attribute__((used)) static uint _dma_ctrlflags(struct dma_info *di, uint mask, uint flags)
{
 uint dmactrlflags;

 if (di == ((void*)0))
  return 0;

 dmactrlflags = di->dma.dmactrlflags;
 dmactrlflags &= ~mask;
 dmactrlflags |= flags;


 if (dmactrlflags & DMA_CTRL_PEN) {
  u32 control;

  control = bcma_read32(di->core, DMA64TXREGOFFS(di, control));
  bcma_write32(di->core, DMA64TXREGOFFS(di, control),
        control | D64_XC_PD);
  if (bcma_read32(di->core, DMA64TXREGOFFS(di, control)) &
      D64_XC_PD)



   bcma_write32(di->core, DMA64TXREGOFFS(di, control),
         control);
  else

   dmactrlflags &= ~DMA_CTRL_PEN;
 }

 di->dma.dmactrlflags = dmactrlflags;

 return dmactrlflags;
}

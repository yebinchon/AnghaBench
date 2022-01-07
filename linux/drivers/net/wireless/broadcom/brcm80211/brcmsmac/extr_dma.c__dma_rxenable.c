
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct TYPE_2__ {int dmactrlflags; } ;
struct dma_info {int rxoffset; int core; int name; TYPE_1__ dma; } ;


 int D64_RC_AE ;
 int D64_RC_OC ;
 int D64_RC_PD ;
 int D64_RC_RE ;
 int D64_RC_RO_SHIFT ;
 int DMA64RXREGOFFS (struct dma_info*,int) ;
 int DMA_CTRL_PEN ;
 int DMA_CTRL_ROC ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int) ;
 int brcms_dbg_dma (int ,char*,int ) ;

__attribute__((used)) static void _dma_rxenable(struct dma_info *di)
{
 uint dmactrlflags = di->dma.dmactrlflags;
 u32 control;

 brcms_dbg_dma(di->core, "%s:\n", di->name);

 control = D64_RC_RE | (bcma_read32(di->core,
        DMA64RXREGOFFS(di, control)) &
          D64_RC_AE);

 if ((dmactrlflags & DMA_CTRL_PEN) == 0)
  control |= D64_RC_PD;

 if (dmactrlflags & DMA_CTRL_ROC)
  control |= D64_RC_OC;

 bcma_write32(di->core, DMA64RXREGOFFS(di, control),
  ((di->rxoffset << D64_RC_RO_SHIFT) | control));
}

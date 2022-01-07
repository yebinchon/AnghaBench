
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hw_dma {int size; int mapping; int addr; } ;
struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_7__ {int size; int mapping; int addr; } ;
struct TYPE_10__ {TYPE_2__ sp_dma; } ;
struct TYPE_9__ {int size; int mapping; int addr; } ;
struct TYPE_8__ {int size; int mapping; int addr; } ;
struct TYPE_6__ {struct hw_dma* context; } ;


 int BNX2X_PCI_FREE (int ,int ,int ) ;
 int BNX2X_VF_CIDS ;
 TYPE_5__* BP_VFDB (struct bnx2x*) ;
 TYPE_4__* BP_VF_BULLETIN_DMA (struct bnx2x*) ;
 TYPE_3__* BP_VF_MBX_DMA (struct bnx2x*) ;
 int ILT_PAGE_CIDS ;
 int IS_SRIOV (struct bnx2x*) ;

void bnx2x_iov_free_mem(struct bnx2x *bp)
{
 int i;

 if (!IS_SRIOV(bp))
  return;


 for (i = 0; i < BNX2X_VF_CIDS/ILT_PAGE_CIDS; i++) {
  struct hw_dma *cxt = &bp->vfdb->context[i];
  BNX2X_PCI_FREE(cxt->addr, cxt->mapping, cxt->size);
 }

 BNX2X_PCI_FREE(BP_VFDB(bp)->sp_dma.addr,
         BP_VFDB(bp)->sp_dma.mapping,
         BP_VFDB(bp)->sp_dma.size);

 BNX2X_PCI_FREE(BP_VF_MBX_DMA(bp)->addr,
         BP_VF_MBX_DMA(bp)->mapping,
         BP_VF_MBX_DMA(bp)->size);

 BNX2X_PCI_FREE(BP_VF_BULLETIN_DMA(bp)->addr,
         BP_VF_BULLETIN_DMA(bp)->mapping,
         BP_VF_BULLETIN_DMA(bp)->size);
}

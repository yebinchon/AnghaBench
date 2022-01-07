
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int bmap; } ;
struct rvu_pfvf {TYPE_2__ msix; } ;
struct rvu_hwinfo {int total_pfs; int total_vfs; struct rvu_block* block; } ;
struct TYPE_3__ {int bmap; } ;
struct rvu_block {TYPE_1__ lf; } ;
struct rvu {int rsrc_lock; int msix_base_iova; int dev; struct rvu_pfvf* hwvf; struct rvu_pfvf* pf; struct rvu_hwinfo* hw; } ;


 int BLKADDR_RVUM ;
 int BLK_COUNT ;
 int DMA_BIDIRECTIONAL ;
 int PCI_MSIX_ENTRY_SIZE ;
 int RVU_PRIV_CONST ;
 int dma_unmap_resource (int ,int ,int,int ,int ) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int rvu_nix_freemem (struct rvu*) ;
 int rvu_npa_freemem (struct rvu*) ;
 int rvu_npc_freemem (struct rvu*) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static void rvu_free_hw_resources(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 struct rvu_pfvf *pfvf;
 int id, max_msix;
 u64 cfg;

 rvu_npa_freemem(rvu);
 rvu_npc_freemem(rvu);
 rvu_nix_freemem(rvu);


 for (id = 0; id < BLK_COUNT; id++) {
  block = &hw->block[id];
  kfree(block->lf.bmap);
 }


 for (id = 0; id < hw->total_pfs; id++) {
  pfvf = &rvu->pf[id];
  kfree(pfvf->msix.bmap);
 }

 for (id = 0; id < hw->total_vfs; id++) {
  pfvf = &rvu->hwvf[id];
  kfree(pfvf->msix.bmap);
 }


 if (!rvu->msix_base_iova)
  return;
 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_CONST);
 max_msix = cfg & 0xFFFFF;
 dma_unmap_resource(rvu->dev, rvu->msix_base_iova,
      max_msix * PCI_MSIX_ENTRY_SIZE,
      DMA_BIDIRECTIONAL, 0);

 mutex_destroy(&rvu->rsrc_lock);
}

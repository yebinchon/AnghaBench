
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_3__ {int max; } ;
struct rvu_pfvf {TYPE_1__ msix; void* msix_lfmap; } ;
struct rvu_hwinfo {int total_pfs; } ;
struct rvu {scalar_t__ msix_base_iova; int dev; struct rvu_pfvf* hwvf; struct rvu_pfvf* pf; struct rvu_hwinfo* hw; } ;
typedef scalar_t__ dma_addr_t ;


 int BLKADDR_RVUM ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_MSIX_ENTRY_SIZE ;
 int RVU_AF_MSIXTR_BASE ;
 int RVU_PRIV_CONST ;
 int RVU_PRIV_HWVFX_INT_CFG (int) ;
 int RVU_PRIV_PFX_CFG (int) ;
 int RVU_PRIV_PFX_INT_CFG (int) ;
 int RVU_PRIV_PFX_MSIX_CFG (int) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 scalar_t__ dma_map_resource (int ,int,int,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int rvu_alloc_bitmap (TYPE_1__*) ;
 int rvu_alloc_rsrc_contig (TYPE_1__*,int) ;
 int rvu_check_min_msix_vec (struct rvu*,int,int,int) ;
 int rvu_get_pf_numvfs (struct rvu*,int,int*,int*) ;
 int rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int) ;

__attribute__((used)) static int rvu_setup_msix_resources(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 int pf, vf, numvfs, hwvf, err;
 int nvecs, offset, max_msix;
 struct rvu_pfvf *pfvf;
 u64 cfg, phy_addr;
 dma_addr_t iova;

 for (pf = 0; pf < hw->total_pfs; pf++) {
  cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_CFG(pf));

  if (!((cfg >> 20) & 0x01))
   continue;

  rvu_get_pf_numvfs(rvu, pf, &numvfs, &hwvf);

  pfvf = &rvu->pf[pf];

  cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_MSIX_CFG(pf));
  pfvf->msix.max = ((cfg >> 32) & 0xFFF) + 1;
  rvu_check_min_msix_vec(rvu, pfvf->msix.max, pf, 0);


  err = rvu_alloc_bitmap(&pfvf->msix);
  if (err)
   return err;


  pfvf->msix_lfmap = devm_kcalloc(rvu->dev, pfvf->msix.max,
      sizeof(u16), GFP_KERNEL);
  if (!pfvf->msix_lfmap)
   return -ENOMEM;




  if (!pf)
   goto setup_vfmsix;





  cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_PFX_INT_CFG(pf));
  nvecs = (cfg >> 12) & 0xFF;
  cfg &= ~0x7FFULL;
  offset = rvu_alloc_rsrc_contig(&pfvf->msix, nvecs);
  rvu_write64(rvu, BLKADDR_RVUM,
       RVU_PRIV_PFX_INT_CFG(pf), cfg | offset);
setup_vfmsix:

  for (vf = 0; vf < numvfs; vf++) {
   pfvf = &rvu->hwvf[hwvf + vf];

   cfg = rvu_read64(rvu, BLKADDR_RVUM,
      RVU_PRIV_PFX_MSIX_CFG(pf));
   pfvf->msix.max = (cfg & 0xFFF) + 1;
   rvu_check_min_msix_vec(rvu, pfvf->msix.max, pf, vf + 1);


   err = rvu_alloc_bitmap(&pfvf->msix);
   if (err)
    return err;

   pfvf->msix_lfmap =
    devm_kcalloc(rvu->dev, pfvf->msix.max,
          sizeof(u16), GFP_KERNEL);
   if (!pfvf->msix_lfmap)
    return -ENOMEM;





   cfg = rvu_read64(rvu, BLKADDR_RVUM,
      RVU_PRIV_HWVFX_INT_CFG(hwvf + vf));
   nvecs = (cfg >> 12) & 0xFF;
   cfg &= ~0x7FFULL;
   offset = rvu_alloc_rsrc_contig(&pfvf->msix, nvecs);
   rvu_write64(rvu, BLKADDR_RVUM,
        RVU_PRIV_HWVFX_INT_CFG(hwvf + vf),
        cfg | offset);
  }
 }





 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_CONST);
 max_msix = cfg & 0xFFFFF;
 phy_addr = rvu_read64(rvu, BLKADDR_RVUM, RVU_AF_MSIXTR_BASE);
 iova = dma_map_resource(rvu->dev, phy_addr,
    max_msix * PCI_MSIX_ENTRY_SIZE,
    DMA_BIDIRECTIONAL, 0);

 if (dma_mapping_error(rvu->dev, iova))
  return -ENOMEM;

 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_MSIXTR_BASE, (u64)iova);
 rvu->msix_base_iova = iova;

 return 0;
}

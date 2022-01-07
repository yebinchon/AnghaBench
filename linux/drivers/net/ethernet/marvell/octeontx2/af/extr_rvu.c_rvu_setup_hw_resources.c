
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu_pfvf {int dummy; } ;
struct rvu_hwinfo {int total_pfs; int total_vfs; int max_vfs_per_pf; struct rvu_block* block; } ;
struct TYPE_2__ {int max; int bmap; } ;
struct rvu_block {size_t addr; int lfshift; int multislot; void* fn_map; TYPE_1__ lf; int name; int lfreset_reg; int msixcfg_reg; int lfcfg_reg; int vf_lfcnt_reg; int pf_lfcnt_reg; int lookup_reg; int type; int implemented; } ;
struct rvu {int dev; int rsrc_lock; void* hwvf; void* pf; struct rvu_hwinfo* hw; } ;


 size_t BLKADDR_CPT0 ;
 size_t BLKADDR_NIX0 ;
 size_t BLKADDR_NPA ;
 size_t BLKADDR_RVUM ;
 size_t BLKADDR_SSO ;
 size_t BLKADDR_SSOW ;
 size_t BLKADDR_TIM ;
 int BLKTYPE_CPT ;
 int BLKTYPE_NIX ;
 int BLKTYPE_NPA ;
 int BLKTYPE_SSO ;
 int BLKTYPE_SSOW ;
 int BLKTYPE_TIM ;
 int BLK_COUNT ;
 int CPT_AF_CONSTANTS0 ;
 int CPT_AF_LF_RST ;
 int CPT_AF_RVU_LF_CFG_DEBUG ;
 int CPT_PRIV_LFX_CFG ;
 int CPT_PRIV_LFX_INT_CFG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NIX_AF_CONST2 ;
 int NIX_AF_LF_RST ;
 int NIX_AF_RVU_LF_CFG_DEBUG ;
 int NIX_PRIV_LFX_CFG ;
 int NIX_PRIV_LFX_INT_CFG ;
 int NPA_AF_CONST ;
 int NPA_AF_LF_RST ;
 int NPA_AF_RVU_LF_CFG_DEBUG ;
 int NPA_PRIV_LFX_CFG ;
 int NPA_PRIV_LFX_INT_CFG ;
 int RVU_PRIV_CONST ;
 int RVU_PRIV_HWVFX_CPT0_CFG ;
 int RVU_PRIV_HWVFX_NIX0_CFG ;
 int RVU_PRIV_HWVFX_NPA_CFG ;
 int RVU_PRIV_HWVFX_SSOW_CFG ;
 int RVU_PRIV_HWVFX_SSO_CFG ;
 int RVU_PRIV_HWVFX_TIM_CFG ;
 int RVU_PRIV_PFX_CPT0_CFG ;
 int RVU_PRIV_PFX_NIX0_CFG ;
 int RVU_PRIV_PFX_NPA_CFG ;
 int RVU_PRIV_PFX_SSOW_CFG ;
 int RVU_PRIV_PFX_SSO_CFG ;
 int RVU_PRIV_PFX_TIM_CFG ;
 int SSOW_AF_LF_HWS_RST ;
 int SSOW_AF_RVU_LF_HWS_CFG_DEBUG ;
 int SSOW_PRIV_LFX_HWS_CFG ;
 int SSOW_PRIV_LFX_HWS_INT_CFG ;
 int SSO_AF_CONST ;
 int SSO_AF_LF_HWGRP_RST ;
 int SSO_AF_RVU_LF_CFG_DEBUG ;
 int SSO_PRIV_LFX_HWGRP_CFG ;
 int SSO_PRIV_LFX_HWGRP_INT_CFG ;
 int TIM_AF_CONST ;
 int TIM_AF_LF_RST ;
 int TIM_AF_RVU_LF_CFG_DEBUG ;
 int TIM_PRIV_LFX_CFG ;
 int TIM_PRIV_LFX_INT_CFG ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int mutex_init (int *) ;
 int rvu_alloc_bitmap (TYPE_1__*) ;
 int rvu_cgx_exit (struct rvu*) ;
 int rvu_cgx_init (struct rvu*) ;
 int rvu_nix_init (struct rvu*) ;
 int rvu_npa_init (struct rvu*) ;
 int rvu_npc_init (struct rvu*) ;
 int rvu_read64 (struct rvu*,size_t,int ) ;
 int rvu_scan_block (struct rvu*,struct rvu_block*) ;
 int rvu_setup_msix_resources (struct rvu*) ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int rvu_setup_hw_resources(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 struct rvu_block *block;
 int blkid, err;
 u64 cfg;


 cfg = rvu_read64(rvu, BLKADDR_RVUM, RVU_PRIV_CONST);
 hw->total_pfs = (cfg >> 32) & 0xFF;
 hw->total_vfs = (cfg >> 20) & 0xFFF;
 hw->max_vfs_per_pf = (cfg >> 40) & 0xFF;


 block = &hw->block[BLKADDR_NPA];
 if (!block->implemented)
  goto nix;
 cfg = rvu_read64(rvu, BLKADDR_NPA, NPA_AF_CONST);
 block->lf.max = (cfg >> 16) & 0xFFF;
 block->addr = BLKADDR_NPA;
 block->type = BLKTYPE_NPA;
 block->lfshift = 8;
 block->lookup_reg = NPA_AF_RVU_LF_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_NPA_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_NPA_CFG;
 block->lfcfg_reg = NPA_PRIV_LFX_CFG;
 block->msixcfg_reg = NPA_PRIV_LFX_INT_CFG;
 block->lfreset_reg = NPA_AF_LF_RST;
 sprintf(block->name, "NPA");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

nix:

 block = &hw->block[BLKADDR_NIX0];
 if (!block->implemented)
  goto sso;
 cfg = rvu_read64(rvu, BLKADDR_NIX0, NIX_AF_CONST2);
 block->lf.max = cfg & 0xFFF;
 block->addr = BLKADDR_NIX0;
 block->type = BLKTYPE_NIX;
 block->lfshift = 8;
 block->lookup_reg = NIX_AF_RVU_LF_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_NIX0_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_NIX0_CFG;
 block->lfcfg_reg = NIX_PRIV_LFX_CFG;
 block->msixcfg_reg = NIX_PRIV_LFX_INT_CFG;
 block->lfreset_reg = NIX_AF_LF_RST;
 sprintf(block->name, "NIX");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

sso:

 block = &hw->block[BLKADDR_SSO];
 if (!block->implemented)
  goto ssow;
 cfg = rvu_read64(rvu, BLKADDR_SSO, SSO_AF_CONST);
 block->lf.max = cfg & 0xFFFF;
 block->addr = BLKADDR_SSO;
 block->type = BLKTYPE_SSO;
 block->multislot = 1;
 block->lfshift = 3;
 block->lookup_reg = SSO_AF_RVU_LF_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_SSO_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_SSO_CFG;
 block->lfcfg_reg = SSO_PRIV_LFX_HWGRP_CFG;
 block->msixcfg_reg = SSO_PRIV_LFX_HWGRP_INT_CFG;
 block->lfreset_reg = SSO_AF_LF_HWGRP_RST;
 sprintf(block->name, "SSO GROUP");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

ssow:

 block = &hw->block[BLKADDR_SSOW];
 if (!block->implemented)
  goto tim;
 block->lf.max = (cfg >> 56) & 0xFF;
 block->addr = BLKADDR_SSOW;
 block->type = BLKTYPE_SSOW;
 block->multislot = 1;
 block->lfshift = 3;
 block->lookup_reg = SSOW_AF_RVU_LF_HWS_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_SSOW_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_SSOW_CFG;
 block->lfcfg_reg = SSOW_PRIV_LFX_HWS_CFG;
 block->msixcfg_reg = SSOW_PRIV_LFX_HWS_INT_CFG;
 block->lfreset_reg = SSOW_AF_LF_HWS_RST;
 sprintf(block->name, "SSOWS");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

tim:

 block = &hw->block[BLKADDR_TIM];
 if (!block->implemented)
  goto cpt;
 cfg = rvu_read64(rvu, BLKADDR_TIM, TIM_AF_CONST);
 block->lf.max = cfg & 0xFFFF;
 block->addr = BLKADDR_TIM;
 block->type = BLKTYPE_TIM;
 block->multislot = 1;
 block->lfshift = 3;
 block->lookup_reg = TIM_AF_RVU_LF_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_TIM_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_TIM_CFG;
 block->lfcfg_reg = TIM_PRIV_LFX_CFG;
 block->msixcfg_reg = TIM_PRIV_LFX_INT_CFG;
 block->lfreset_reg = TIM_AF_LF_RST;
 sprintf(block->name, "TIM");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

cpt:

 block = &hw->block[BLKADDR_CPT0];
 if (!block->implemented)
  goto init;
 cfg = rvu_read64(rvu, BLKADDR_CPT0, CPT_AF_CONSTANTS0);
 block->lf.max = cfg & 0xFF;
 block->addr = BLKADDR_CPT0;
 block->type = BLKTYPE_CPT;
 block->multislot = 1;
 block->lfshift = 3;
 block->lookup_reg = CPT_AF_RVU_LF_CFG_DEBUG;
 block->pf_lfcnt_reg = RVU_PRIV_PFX_CPT0_CFG;
 block->vf_lfcnt_reg = RVU_PRIV_HWVFX_CPT0_CFG;
 block->lfcfg_reg = CPT_PRIV_LFX_CFG;
 block->msixcfg_reg = CPT_PRIV_LFX_INT_CFG;
 block->lfreset_reg = CPT_AF_LF_RST;
 sprintf(block->name, "CPT");
 err = rvu_alloc_bitmap(&block->lf);
 if (err)
  return err;

init:

 rvu->pf = devm_kcalloc(rvu->dev, hw->total_pfs,
          sizeof(struct rvu_pfvf), GFP_KERNEL);
 if (!rvu->pf)
  return -ENOMEM;

 rvu->hwvf = devm_kcalloc(rvu->dev, hw->total_vfs,
     sizeof(struct rvu_pfvf), GFP_KERNEL);
 if (!rvu->hwvf)
  return -ENOMEM;

 mutex_init(&rvu->rsrc_lock);

 err = rvu_setup_msix_resources(rvu);
 if (err)
  return err;

 for (blkid = 0; blkid < BLK_COUNT; blkid++) {
  block = &hw->block[blkid];
  if (!block->lf.bmap)
   continue;


  block->fn_map = devm_kcalloc(rvu->dev, block->lf.max,
          sizeof(u16), GFP_KERNEL);
  if (!block->fn_map)
   return -ENOMEM;




  rvu_scan_block(rvu, block);
 }

 err = rvu_npc_init(rvu);
 if (err)
  goto exit;

 err = rvu_cgx_init(rvu);
 if (err)
  goto exit;

 err = rvu_npa_init(rvu);
 if (err)
  goto cgx_err;

 err = rvu_nix_init(rvu);
 if (err)
  goto cgx_err;

 return 0;

cgx_err:
 rvu_cgx_exit(rvu);
exit:
 return err;
}

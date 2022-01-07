
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct rvu {int hw; } ;


 int BLKADDR_CPT0 ;
 int BLKADDR_NIX0 ;
 int BLKADDR_NPA ;
 int BLKADDR_NPC ;
 int BLKADDR_RVUM ;
 int BLKADDR_SSO ;
 int BLKADDR_SSOW ;
 int BLKADDR_TIM ;







 int ENODEV ;
 int RVU_PFVF_FUNC_MASK ;
 int RVU_PRIV_HWVFX_CPT0_CFG ;
 int RVU_PRIV_HWVFX_NIX0_CFG ;
 int RVU_PRIV_PFX_CPT0_CFG ;
 int RVU_PRIV_PFX_NIX0_CFG ;
 scalar_t__ is_block_implemented (int ,int) ;
 int rvu_get_hwvf (struct rvu*,int) ;
 int rvu_get_pf (int) ;
 int rvu_read64 (struct rvu*,int ,int) ;

int rvu_get_blkaddr(struct rvu *rvu, int blktype, u16 pcifunc)
{
 int devnum, blkaddr = -ENODEV;
 u64 cfg, reg;
 bool is_pf;

 switch (blktype) {
 case 131:
  blkaddr = BLKADDR_NPC;
  goto exit;
 case 132:
  blkaddr = BLKADDR_NPA;
  goto exit;
 case 133:

  if (!pcifunc) {
   blkaddr = BLKADDR_NIX0;
   goto exit;
  }
  break;
 case 130:
  blkaddr = BLKADDR_SSO;
  goto exit;
 case 129:
  blkaddr = BLKADDR_SSOW;
  goto exit;
 case 128:
  blkaddr = BLKADDR_TIM;
  goto exit;
 case 134:

  if (!pcifunc) {
   blkaddr = BLKADDR_CPT0;
   goto exit;
  }
  break;
 }


 if (pcifunc & RVU_PFVF_FUNC_MASK) {
  is_pf = 0;
  devnum = rvu_get_hwvf(rvu, pcifunc);
 } else {
  is_pf = 1;
  devnum = rvu_get_pf(pcifunc);
 }


 if (blktype == 133) {
  reg = is_pf ? RVU_PRIV_PFX_NIX0_CFG : RVU_PRIV_HWVFX_NIX0_CFG;
  cfg = rvu_read64(rvu, BLKADDR_RVUM, reg | (devnum << 16));
  if (cfg)
   blkaddr = BLKADDR_NIX0;
 }


 if (blktype == 134) {
  reg = is_pf ? RVU_PRIV_PFX_CPT0_CFG : RVU_PRIV_HWVFX_CPT0_CFG;
  cfg = rvu_read64(rvu, BLKADDR_RVUM, reg | (devnum << 16));
  if (cfg)
   blkaddr = BLKADDR_CPT0;
 }

exit:
 if (is_block_implemented(rvu->hw, blkaddr))
  return blkaddr;
 return -ENODEV;
}

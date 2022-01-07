
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {int cgx_links; int lbk_links; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int NIX_AF_TL3_TL2X_LINKX_CFG (int,int) ;
 int NIX_AF_TL4X_SDP_LINK_CFG (int) ;
 int NIX_TXSCH_LVL_TL2 ;
 int NIX_TXSCH_LVL_TL4 ;
 int rvu_write64 (struct rvu*,int,int ,int) ;

__attribute__((used)) static void nix_reset_tx_linkcfg(struct rvu *rvu, int blkaddr,
     int lvl, int schq)
{
 struct rvu_hwinfo *hw = rvu->hw;
 int link;


 if (lvl == NIX_TXSCH_LVL_TL4)
  rvu_write64(rvu, blkaddr, NIX_AF_TL4X_SDP_LINK_CFG(schq), 0x00);

 if (lvl != NIX_TXSCH_LVL_TL2)
  return;


 for (link = 0; link < (hw->cgx_links + hw->lbk_links); link++)
  rvu_write64(rvu, blkaddr,
       NIX_AF_TL3_TL2X_LINKX_CFG(schq, link), 0x00);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct lmac {int dmacs_cfg; TYPE_1__* dmacs; } ;
struct bgx {struct lmac* lmac; } ;
struct TYPE_2__ {int dmac; } ;


 int BCAST_ACCEPT ;
 int BGX_CMRX_RX_DMAC_CTL ;
 int BGX_MCAST_MODE (int ) ;
 int BGX_XCAST_BCAST_ACCEPT ;
 int BGX_XCAST_MCAST_ACCEPT ;
 int BGX_XCAST_MCAST_FILTER ;
 int CAM_ACCEPT ;
 int MCAST_MODE_ACCEPT ;
 int MCAST_MODE_CAM_FILTER ;
 int MCAST_MODE_MASK ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int) ;
 int bgx_set_dmac_cam_filter_mac (struct bgx*,int,int ,int) ;
 struct bgx* get_bgx (int,int) ;

void bgx_set_xcast_mode(int node, int bgx_idx, int lmacid, u8 mode)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);
 struct lmac *lmac = ((void*)0);
 u64 cfg = 0;
 u8 i = 0;

 if (!bgx)
  return;

 lmac = &bgx->lmac[lmacid];

 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_RX_DMAC_CTL);
 if (mode & BGX_XCAST_BCAST_ACCEPT)
  cfg |= BCAST_ACCEPT;
 else
  cfg &= ~BCAST_ACCEPT;


 cfg &= ~(CAM_ACCEPT | BGX_MCAST_MODE(MCAST_MODE_MASK));


 if (mode & (BGX_XCAST_MCAST_ACCEPT)) {
  cfg |= (BGX_MCAST_MODE(MCAST_MODE_ACCEPT));
 } else if (mode & BGX_XCAST_MCAST_FILTER) {
  cfg |= (BGX_MCAST_MODE(MCAST_MODE_CAM_FILTER) | CAM_ACCEPT);
  for (i = 0; i < lmac->dmacs_cfg; i++)
   bgx_set_dmac_cam_filter_mac(bgx, lmacid,
          lmac->dmacs[i].dmac, i);
 }
 bgx_reg_write(bgx, lmacid, BGX_CMRX_RX_DMAC_CTL, cfg);
}

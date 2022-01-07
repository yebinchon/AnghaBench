
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bgx {int * lmac; } ;


 int BGX_XCAST_BCAST_ACCEPT ;
 int BGX_XCAST_MCAST_ACCEPT ;
 int bgx_flush_dmac_cam_filter (struct bgx*,int) ;
 int bgx_lmac_remove_filters (int *,int ) ;
 int bgx_set_xcast_mode (int,int,int,int) ;
 struct bgx* get_bgx (int,int) ;

void bgx_reset_xcast_mode(int node, int bgx_idx, int lmacid, u8 vf_id)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);

 if (!bgx)
  return;

 bgx_lmac_remove_filters(&bgx->lmac[lmacid], vf_id);
 bgx_flush_dmac_cam_filter(bgx, lmacid);
 bgx_set_xcast_mode(node, bgx_idx, lmacid,
      (BGX_XCAST_BCAST_ACCEPT | BGX_XCAST_MCAST_ACCEPT));
}

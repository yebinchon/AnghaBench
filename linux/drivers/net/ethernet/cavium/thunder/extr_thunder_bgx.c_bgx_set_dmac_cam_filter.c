
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct lmac {int mac; } ;
struct bgx {struct lmac* lmac; } ;


 int bgx_lmac_save_filter (struct lmac*,int ,int ) ;
 int ether_addr_to_u64 (int ) ;
 struct bgx* get_bgx (int,int) ;

void bgx_set_dmac_cam_filter(int node, int bgx_idx, int lmacid,
        u64 cam_dmac, u8 vf_id)
{
 struct bgx *bgx = get_bgx(node, bgx_idx);
 struct lmac *lmac = ((void*)0);

 if (!bgx)
  return;

 lmac = &bgx->lmac[lmacid];

 if (!cam_dmac)
  cam_dmac = ether_addr_to_u64(lmac->mac);






 bgx_lmac_save_filter(lmac, cam_dmac, vf_id);
}

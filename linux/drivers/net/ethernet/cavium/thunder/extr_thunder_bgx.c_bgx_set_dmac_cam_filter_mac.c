
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct lmac {int dmacs_count; } ;
struct bgx {struct lmac* lmac; } ;


 scalar_t__ BGX_CMR_RX_DMACX_CAM ;
 int LMAC_ID_MASK ;
 int RX_DMACX_CAM_EN ;
 int RX_DMACX_CAM_LMACID (int) ;
 int bgx_reg_write (struct bgx*,int ,scalar_t__,int) ;

__attribute__((used)) static int bgx_set_dmac_cam_filter_mac(struct bgx *bgx, int lmacid,
           u64 cam_dmac, u8 idx)
{
 struct lmac *lmac = ((void*)0);
 u64 cfg = 0;


 if (!cam_dmac || !bgx)
  return -1;

 lmac = &bgx->lmac[lmacid];


 cfg = RX_DMACX_CAM_LMACID(lmacid & LMAC_ID_MASK) |
  RX_DMACX_CAM_EN | cam_dmac;
 bgx_reg_write(bgx, 0, BGX_CMR_RX_DMACX_CAM +
        ((lmacid * lmac->dmacs_count) + idx) * sizeof(u64), cfg);
 return 0;
}

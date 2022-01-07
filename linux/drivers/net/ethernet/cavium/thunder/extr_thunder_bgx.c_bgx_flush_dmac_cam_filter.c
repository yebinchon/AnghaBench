
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct lmac {int dmacs_count; } ;
struct bgx {struct lmac* lmac; } ;


 scalar_t__ BGX_CMR_RX_DMACX_CAM ;
 int bgx_reg_write (struct bgx*,int ,scalar_t__,int ) ;

__attribute__((used)) static void bgx_flush_dmac_cam_filter(struct bgx *bgx, int lmacid)
{
 struct lmac *lmac = ((void*)0);
 u8 idx = 0;

 lmac = &bgx->lmac[lmacid];

 for (idx = 0; idx < lmac->dmacs_count; idx++)
  bgx_reg_write(bgx, 0, BGX_CMR_RX_DMACX_CAM +
         ((lmacid * lmac->dmacs_count) + idx) *
         sizeof(u64), 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lmac {int lmacid; } ;
struct bgx {int dummy; } ;


 int BGX_CMRX_CFG ;
 int bgx_reg_read (struct bgx*,int ,int ) ;

__attribute__((used)) static u8 bgx_get_lane2sds_cfg(struct bgx *bgx, struct lmac *lmac)
{
 return (u8)(bgx_reg_read(bgx, lmac->lmacid, BGX_CMRX_CFG) & 0xFF);
}

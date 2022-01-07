
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {int lmac_type; int lane_to_sds; int lmacid; } ;
struct bgx {int dummy; } ;
 int bgx_get_lane2sds_cfg (struct bgx*,struct lmac*) ;

__attribute__((used)) static void lmac_set_lane2sds(struct bgx *bgx, struct lmac *lmac)
{
 switch (lmac->lmac_type) {
 case 131:
 case 129:
  lmac->lane_to_sds = lmac->lmacid;
  break;
 case 130:
 case 128:
 case 133:
  lmac->lane_to_sds = 0xE4;
  break;
 case 132:
  lmac->lane_to_sds = (lmac->lmacid) ? 0xE : 0x4;
  break;
 case 134:





  lmac->lane_to_sds = bgx_get_lane2sds_cfg(bgx, lmac);
  break;
 default:
  lmac->lane_to_sds = 0;
  break;
 }
}

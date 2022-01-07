
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_eee {int advertised; int supported; scalar_t__ eee_enabled; } ;
struct bnxt_link_info {int autoneg; int advertising; } ;
struct bnxt {int flags; struct bnxt_link_info link_info; struct ethtool_eee eee; } ;


 int BNXT_AUTONEG_SPEED ;
 int BNXT_FLAG_EEE_CAP ;
 int _bnxt_fw_to_ethtool_adv_spds (int ,int ) ;

__attribute__((used)) static bool bnxt_eee_config_ok(struct bnxt *bp)
{
 struct ethtool_eee *eee = &bp->eee;
 struct bnxt_link_info *link_info = &bp->link_info;

 if (!(bp->flags & BNXT_FLAG_EEE_CAP))
  return 1;

 if (eee->eee_enabled) {
  u32 advertising =
   _bnxt_fw_to_ethtool_adv_spds(link_info->advertising, 0);

  if (!(link_info->autoneg & BNXT_AUTONEG_SPEED)) {
   eee->eee_enabled = 0;
   return 0;
  }
  if (eee->advertised & ~advertising) {
   eee->advertised = advertising & eee->supported;
   return 0;
  }
 }
 return 1;
}

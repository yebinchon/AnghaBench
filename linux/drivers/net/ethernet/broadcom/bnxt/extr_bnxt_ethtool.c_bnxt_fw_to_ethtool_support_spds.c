
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ethtool_link_ksettings {int dummy; } ;
struct bnxt_link_info {scalar_t__ support_auto_speeds; int support_speeds; } ;


 int Asym_Pause ;
 int Autoneg ;
 int BNXT_FW_TO_ETHTOOL_SPDS (int ,int ,struct ethtool_link_ksettings*,int ) ;
 int Pause ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int supported ;

__attribute__((used)) static void bnxt_fw_to_ethtool_support_spds(struct bnxt_link_info *link_info,
    struct ethtool_link_ksettings *lk_ksettings)
{
 u16 fw_speeds = link_info->support_speeds;

 BNXT_FW_TO_ETHTOOL_SPDS(fw_speeds, 0, lk_ksettings, supported);

 ethtool_link_ksettings_add_link_mode(lk_ksettings, supported, Pause);
 ethtool_link_ksettings_add_link_mode(lk_ksettings, supported,
          Asym_Pause);

 if (link_info->support_auto_speeds)
  ethtool_link_ksettings_add_link_mode(lk_ksettings, supported,
           Autoneg);
}

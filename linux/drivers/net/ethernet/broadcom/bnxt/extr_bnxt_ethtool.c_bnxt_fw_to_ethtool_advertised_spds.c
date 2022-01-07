
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ethtool_link_ksettings {int dummy; } ;
struct bnxt_link_info {int autoneg; int auto_pause_setting; int advertising; } ;


 int BNXT_AUTONEG_FLOW_CTRL ;
 int BNXT_FW_TO_ETHTOOL_SPDS (int ,int ,struct ethtool_link_ksettings*,int ) ;
 int advertising ;

__attribute__((used)) static void bnxt_fw_to_ethtool_advertised_spds(struct bnxt_link_info *link_info,
    struct ethtool_link_ksettings *lk_ksettings)
{
 u16 fw_speeds = link_info->advertising;
 u8 fw_pause = 0;

 if (link_info->autoneg & BNXT_AUTONEG_FLOW_CTRL)
  fw_pause = link_info->auto_pause_setting;

 BNXT_FW_TO_ETHTOOL_SPDS(fw_speeds, fw_pause, lk_ksettings, advertising);
}

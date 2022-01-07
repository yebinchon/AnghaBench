
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {unsigned long* supported; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int ETHTOOL_LINK_MODE_TP_BIT ;
 int HCLGE_SUPPORT_100M_BIT ;
 int HCLGE_SUPPORT_10M_BIT ;
 int HCLGE_SUPPORT_1G_BIT ;
 int HCLGE_SUPPORT_GE ;
 int linkmode_set_bit (int ,unsigned long*) ;

__attribute__((used)) static void hclge_parse_copper_link_mode(struct hclge_dev *hdev,
      u8 speed_ability)
{
 unsigned long *supported = hdev->hw.mac.supported;


 if (!speed_ability)
  speed_ability = HCLGE_SUPPORT_GE;

 if (speed_ability & HCLGE_SUPPORT_1G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
     supported);

 if (speed_ability & HCLGE_SUPPORT_100M_BIT) {
  linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
     supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Half_BIT,
     supported);
 }

 if (speed_ability & HCLGE_SUPPORT_10M_BIT) {
  linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Full_BIT, supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Half_BIT, supported);
 }

 linkmode_set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_TP_BIT, supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT, supported);
 linkmode_set_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT, supported);
}

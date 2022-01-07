
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hclge_mac {int supported; } ;


 int ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT ;
 int ETHTOOL_LINK_MODE_10000baseKR_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseKX_Full_BIT ;
 int ETHTOOL_LINK_MODE_25000baseKR_Full_BIT ;
 int ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT ;
 int ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT ;
 int HCLGE_SUPPORT_100G_BIT ;
 int HCLGE_SUPPORT_10G_BIT ;
 int HCLGE_SUPPORT_1G_BIT ;
 int HCLGE_SUPPORT_25G_BIT ;
 int HCLGE_SUPPORT_40G_BIT ;
 int HCLGE_SUPPORT_50G_BIT ;
 int linkmode_set_bit (int ,int ) ;

__attribute__((used)) static void hclge_convert_setting_kr(struct hclge_mac *mac, u8 speed_ability)
{
 if (speed_ability & HCLGE_SUPPORT_1G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
     mac->supported);
 if (speed_ability & HCLGE_SUPPORT_10G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
     mac->supported);
 if (speed_ability & HCLGE_SUPPORT_25G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
     mac->supported);
 if (speed_ability & HCLGE_SUPPORT_40G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
     mac->supported);
 if (speed_ability & HCLGE_SUPPORT_50G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
     mac->supported);
 if (speed_ability & HCLGE_SUPPORT_100G_BIT)
  linkmode_set_bit(ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
     mac->supported);
}

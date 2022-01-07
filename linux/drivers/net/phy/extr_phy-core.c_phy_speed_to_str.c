
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON_MSG (int,char*) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;

const char *phy_speed_to_str(int speed)
{
 BUILD_BUG_ON_MSG(__ETHTOOL_LINK_MODE_MASK_NBITS != 69,
  "Enum ethtool_link_mode_bit_indices and phylib are out of sync. "
  "If a speed or mode has been added please update phy_speed_to_str "
  "and the PHY settings array.\n");

 switch (speed) {
 case 142:
  return "10Mbps";
 case 141:
  return "100Mbps";
 case 140:
  return "1Gbps";
 case 134:
  return "2.5Gbps";
 case 131:
  return "5Gbps";
 case 139:
  return "10Gbps";
 case 137:
  return "14Gbps";
 case 136:
  return "20Gbps";
 case 133:
  return "25Gbps";
 case 132:
  return "40Gbps";
 case 130:
  return "50Gbps";
 case 129:
  return "56Gbps";
 case 138:
  return "100Gbps";
 case 135:
  return "200Gbps";
 case 128:
  return "Unknown";
 default:
  return "Unsupported (update phy-core.c)";
 }
}

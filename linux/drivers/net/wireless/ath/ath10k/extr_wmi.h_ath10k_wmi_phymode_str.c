
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wmi_phy_mode { ____Placeholder_wmi_phy_mode } wmi_phy_mode ;
__attribute__((used)) static inline const char *ath10k_wmi_phymode_str(enum wmi_phy_mode mode)
{
 switch (mode) {
 case 144:
  return "11a";
 case 134:
  return "11g";
 case 135:
  return "11b";
 case 133:
  return "11gonly";
 case 132:
  return "11na-ht20";
 case 130:
  return "11ng-ht20";
 case 131:
  return "11na-ht40";
 case 129:
  return "11ng-ht40";
 case 142:
  return "11ac-vht20";
 case 140:
  return "11ac-vht40";
 case 138:
  return "11ac-vht80";
 case 143:
  return "11ac-vht160";
 case 136:
  return "11ac-vht80+80";
 case 141:
  return "11ac-vht20-2g";
 case 139:
  return "11ac-vht40-2g";
 case 137:
  return "11ac-vht80-2g";
 case 128:

  break;




 }

 return "<unknown>";
}

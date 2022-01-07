
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;
__attribute__((used)) static char *b43_phy_name(struct b43_wldev *dev, u8 phy_type)
{
 switch (phy_type) {
 case 138:
  return "A";
 case 136:
  return "B";
 case 135:
  return "G";
 case 129:
  return "N";
 case 130:
  return "LP";
 case 128:
  return "SSLPN";
 case 134:
  return "HT";
 case 133:
  return "LCN";
 case 131:
  return "LCNXN";
 case 132:
  return "LCN40";
 case 137:
  return "AC";
 }
 return "UNKNOWN";
}

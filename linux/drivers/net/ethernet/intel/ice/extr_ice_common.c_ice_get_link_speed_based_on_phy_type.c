
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;


 scalar_t__ ICE_AQ_LINK_SPEED_1000MB ;
 scalar_t__ ICE_AQ_LINK_SPEED_100GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_100MB ;
 scalar_t__ ICE_AQ_LINK_SPEED_10GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_2500MB ;
 scalar_t__ ICE_AQ_LINK_SPEED_25GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_40GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_50GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_5GB ;
 scalar_t__ ICE_AQ_LINK_SPEED_UNKNOWN ;
__attribute__((used)) static u16
ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
{
 u16 speed_phy_type_high = ICE_AQ_LINK_SPEED_UNKNOWN;
 u16 speed_phy_type_low = ICE_AQ_LINK_SPEED_UNKNOWN;

 switch (phy_type_low) {
 case 187:
 case 173:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_100MB;
  break;
 case 188:
 case 189:
 case 190:
 case 191:
 case 165:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_1000MB;
  break;
 case 163:
 case 162:
 case 164:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_2500MB;
  break;
 case 128:
 case 129:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_5GB;
  break;
 case 169:
 case 166:
 case 170:
 case 171:
 case 172:
 case 168:
 case 167:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_10GB;
  break;
 case 153:
 case 161:
 case 159:
 case 160:
 case 154:
 case 155:
 case 158:
 case 156:
 case 157:
 case 152:
 case 151:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_25GB;
  break;
 case 150:
 case 147:
 case 148:
 case 149:
 case 145:
 case 146:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_40GB;
  break;
 case 143:
 case 136:
 case 138:
 case 141:
 case 130:
 case 131:
 case 132:
 case 133:
 case 144:
 case 137:
 case 142:
 case 139:
 case 140:
 case 134:
 case 135:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_50GB;
  break;
 case 185:
 case 178:
 case 180:
 case 182:
 case 174:
 case 175:
 case 176:
 case 177:
 case 184:
 case 181:
 case 186:
 case 179:
 case 183:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_100GB;
  break;
 default:
  speed_phy_type_low = ICE_AQ_LINK_SPEED_UNKNOWN;
  break;
 }

 switch (phy_type_high) {
 case 196:
 case 192:
 case 193:
 case 194:
 case 195:
  speed_phy_type_high = ICE_AQ_LINK_SPEED_100GB;
  break;
 default:
  speed_phy_type_high = ICE_AQ_LINK_SPEED_UNKNOWN;
  break;
 }

 if (speed_phy_type_low == ICE_AQ_LINK_SPEED_UNKNOWN &&
     speed_phy_type_high == ICE_AQ_LINK_SPEED_UNKNOWN)
  return ICE_AQ_LINK_SPEED_UNKNOWN;
 else if (speed_phy_type_low != ICE_AQ_LINK_SPEED_UNKNOWN &&
   speed_phy_type_high != ICE_AQ_LINK_SPEED_UNKNOWN)
  return ICE_AQ_LINK_SPEED_UNKNOWN;
 else if (speed_phy_type_low != ICE_AQ_LINK_SPEED_UNKNOWN &&
   speed_phy_type_high == ICE_AQ_LINK_SPEED_UNKNOWN)
  return speed_phy_type_low;
 else
  return speed_phy_type_high;
}

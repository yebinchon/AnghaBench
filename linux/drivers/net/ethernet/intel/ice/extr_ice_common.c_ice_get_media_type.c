
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_link_status {int phy_type_low; int phy_type_high; } ;
struct TYPE_2__ {struct ice_link_status link_info; } ;
struct ice_port_info {TYPE_1__ phy; } ;
typedef enum ice_media_type { ____Placeholder_ice_media_type } ice_media_type ;


 int ICE_MEDIA_BACKPLANE ;
 int ICE_MEDIA_BASET ;
 int ICE_MEDIA_DA ;
 int ICE_MEDIA_FIBER ;
 int ICE_MEDIA_UNKNOWN ;
__attribute__((used)) static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
{
 struct ice_link_status *hw_link_info;

 if (!pi)
  return ICE_MEDIA_UNKNOWN;

 hw_link_info = &pi->phy.link_info;
 if (hw_link_info->phy_type_low && hw_link_info->phy_type_high)

  return ICE_MEDIA_UNKNOWN;

 if (hw_link_info->phy_type_low) {
  switch (hw_link_info->phy_type_low) {
  case 173:
  case 174:
  case 159:
  case 160:
  case 157:
  case 145:
  case 146:
  case 143:
  case 139:
  case 140:
  case 130:
  case 132:
  case 131:
  case 136:
  case 133:
  case 162:
  case 164:
  case 163:
  case 167:
   return ICE_MEDIA_FIBER;
  case 171:
  case 172:
  case 154:
  case 128:
  case 158:
  case 144:
   return ICE_MEDIA_BASET;
  case 156:
  case 152:
  case 150:
  case 151:
  case 142:
  case 137:
  case 138:
  case 169:
  case 168:
  case 170:
   return ICE_MEDIA_DA;
  case 175:
  case 155:
  case 153:
  case 129:
  case 161:
  case 149:
  case 148:
  case 147:
  case 141:
  case 134:
  case 135:
  case 166:
  case 165:
   return ICE_MEDIA_BACKPLANE;
  }
 } else {
  switch (hw_link_info->phy_type_high) {
  case 176:
   return ICE_MEDIA_BACKPLANE;
  }
 }
 return ICE_MEDIA_UNKNOWN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
 int ICE_LINK_SPEED_100000MBPS ;
 int ICE_LINK_SPEED_10000MBPS ;
 int ICE_LINK_SPEED_1000MBPS ;
 int ICE_LINK_SPEED_100MBPS ;
 int ICE_LINK_SPEED_10MBPS ;
 int ICE_LINK_SPEED_20000MBPS ;
 int ICE_LINK_SPEED_25000MBPS ;
 int ICE_LINK_SPEED_2500MBPS ;
 int ICE_LINK_SPEED_40000MBPS ;
 int ICE_LINK_SPEED_50000MBPS ;
 int ICE_LINK_SPEED_5000MBPS ;
 int ICE_LINK_SPEED_UNKNOWN ;
 int VIRTCHNL_LINK_SPEED_100MB ;
 int VIRTCHNL_LINK_SPEED_10GB ;
 int VIRTCHNL_LINK_SPEED_1GB ;
 int VIRTCHNL_LINK_SPEED_20GB ;
 int VIRTCHNL_LINK_SPEED_25GB ;
 int VIRTCHNL_LINK_SPEED_40GB ;
 int VIRTCHNL_LINK_SPEED_UNKNOWN ;

u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
{
 u32 speed;

 if (adv_link_support)
  switch (link_speed) {
  case 134:
   speed = ICE_LINK_SPEED_10MBPS;
   break;
  case 136:
   speed = ICE_LINK_SPEED_100MBPS;
   break;
  case 138:
   speed = ICE_LINK_SPEED_1000MBPS;
   break;
  case 132:
   speed = ICE_LINK_SPEED_2500MBPS;
   break;
  case 128:
   speed = ICE_LINK_SPEED_5000MBPS;
   break;
  case 135:
   speed = ICE_LINK_SPEED_10000MBPS;
   break;
  case 133:
   speed = ICE_LINK_SPEED_20000MBPS;
   break;
  case 131:
   speed = ICE_LINK_SPEED_25000MBPS;
   break;
  case 130:
   speed = ICE_LINK_SPEED_40000MBPS;
   break;
  case 129:
   speed = ICE_LINK_SPEED_50000MBPS;
   break;
  case 137:
   speed = ICE_LINK_SPEED_100000MBPS;
   break;
  default:
   speed = ICE_LINK_SPEED_UNKNOWN;
   break;
  }
 else





  switch (link_speed) {
  case 134:
  case 136:
   speed = (u32)VIRTCHNL_LINK_SPEED_100MB;
   break;
  case 138:
  case 132:
  case 128:
   speed = (u32)VIRTCHNL_LINK_SPEED_1GB;
   break;
  case 135:
   speed = (u32)VIRTCHNL_LINK_SPEED_10GB;
   break;
  case 133:
   speed = (u32)VIRTCHNL_LINK_SPEED_20GB;
   break;
  case 131:
   speed = (u32)VIRTCHNL_LINK_SPEED_25GB;
   break;
  case 130:

  case 129:

  case 137:
   speed = (u32)VIRTCHNL_LINK_SPEED_40GB;
   break;
  default:
   speed = (u32)VIRTCHNL_LINK_SPEED_UNKNOWN;
   break;
  }

 return speed;
}

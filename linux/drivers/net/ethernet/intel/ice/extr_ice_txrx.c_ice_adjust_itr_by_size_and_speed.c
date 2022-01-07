
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_speed; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct ice_port_info {TYPE_2__ phy; } ;


 unsigned int DIV_ROUND_UP (int,unsigned int) ;






 unsigned int ICE_ITR_ADAPTIVE_LATENCY ;
 unsigned int ICE_ITR_ADAPTIVE_MAX_USECS ;
 unsigned int ICE_ITR_MASK ;

__attribute__((used)) static unsigned int
ice_adjust_itr_by_size_and_speed(struct ice_port_info *port_info,
     unsigned int avg_pkt_size,
     unsigned int itr)
{
 switch (port_info->phy.link_info.link_speed) {
 case 133:
  itr += DIV_ROUND_UP(17 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 case 128:
  itr += DIV_ROUND_UP(34 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 case 129:
  itr += DIV_ROUND_UP(43 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 case 130:
  itr += DIV_ROUND_UP(68 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 case 131:
  itr += DIV_ROUND_UP(85 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 case 132:

 default:
  itr += DIV_ROUND_UP(170 * (avg_pkt_size + 24),
        avg_pkt_size + 640);
  break;
 }

 if ((itr & ICE_ITR_MASK) > ICE_ITR_ADAPTIVE_MAX_USECS) {
  itr &= ICE_ITR_ADAPTIVE_LATENCY;
  itr += ICE_ITR_ADAPTIVE_MAX_USECS;
 }

 return itr;
}

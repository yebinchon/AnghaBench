
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int proto; } ;
struct TYPE_6__ {TYPE_1__ usr_ip4_spec; } ;
struct TYPE_7__ {int proto; } ;
struct TYPE_8__ {TYPE_3__ usr_ip4_spec; } ;
struct ethtool_rx_flow_spec {int flow_type; TYPE_2__ m_u; TYPE_4__ h_u; } ;


 int FLOW_EXT ;




 int IXGBE_ATR_FLOW_TYPE_IPV4 ;
 int IXGBE_ATR_FLOW_TYPE_SCTPV4 ;
 int IXGBE_ATR_FLOW_TYPE_TCPV4 ;
 int IXGBE_ATR_FLOW_TYPE_UDPV4 ;




__attribute__((used)) static int ixgbe_flowspec_to_flow_type(struct ethtool_rx_flow_spec *fsp,
           u8 *flow_type)
{
 switch (fsp->flow_type & ~FLOW_EXT) {
 case 129:
  *flow_type = IXGBE_ATR_FLOW_TYPE_TCPV4;
  break;
 case 128:
  *flow_type = IXGBE_ATR_FLOW_TYPE_UDPV4;
  break;
 case 130:
  *flow_type = IXGBE_ATR_FLOW_TYPE_SCTPV4;
  break;
 case 131:
  switch (fsp->h_u.usr_ip4_spec.proto) {
  case 133:
   *flow_type = IXGBE_ATR_FLOW_TYPE_TCPV4;
   break;
  case 132:
   *flow_type = IXGBE_ATR_FLOW_TYPE_UDPV4;
   break;
  case 134:
   *flow_type = IXGBE_ATR_FLOW_TYPE_SCTPV4;
   break;
  case 0:
   if (!fsp->m_u.usr_ip4_spec.proto) {
    *flow_type = IXGBE_ATR_FLOW_TYPE_IPV4;
    break;
   }

  default:
   return 0;
  }
  break;
 default:
  return 0;
 }

 return 1;
}

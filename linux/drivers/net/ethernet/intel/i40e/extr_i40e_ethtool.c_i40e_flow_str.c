
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_rx_flow_spec {int flow_type; } ;


 int FLOW_EXT ;





__attribute__((used)) static const char *i40e_flow_str(struct ethtool_rx_flow_spec *fsp)
{
 switch (fsp->flow_type & ~FLOW_EXT) {
 case 129:
  return "tcp4";
 case 128:
  return "udp4";
 case 130:
  return "sctp4";
 case 131:
  return "ip4";
 default:
  return "unknown";
 }
}

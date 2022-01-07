
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum udp_parsable_tunnel_type { ____Placeholder_udp_parsable_tunnel_type } udp_parsable_tunnel_type ;


 int TUNNEL_ENCAP_UDP_PORT_ENTRY_GENEVE ;
 int TUNNEL_ENCAP_UDP_PORT_ENTRY_VXLAN ;



__attribute__((used)) static int efx_udp_tunnel_type_map(enum udp_parsable_tunnel_type in)
{
 switch (in) {
 case 128:
  return TUNNEL_ENCAP_UDP_PORT_ENTRY_VXLAN;
 case 129:
  return TUNNEL_ENCAP_UDP_PORT_ENTRY_GENEVE;
 default:
  return -1;
 }
}

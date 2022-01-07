
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {TYPE_1__* dev; int pport; int internal_vlan_id; } ;
typedef int __be16 ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int * ff_mac ;
 int htons (int) ;
 scalar_t__ ntohs (int ) ;
 int ofdpa_flow_tbl_term_mac (struct ofdpa_port*,int ,int,int ,int ,int const*,int ,int ,int,int) ;

__attribute__((used)) static int ofdpa_port_router_mac(struct ofdpa_port *ofdpa_port,
     int flags, __be16 vlan_id)
{
 u32 in_pport_mask = 0xffffffff;
 __be16 eth_type;
 const u8 *dst_mac_mask = ff_mac;
 __be16 vlan_id_mask = htons(0xffff);
 bool copy_to_cpu = 0;
 int err;

 if (ntohs(vlan_id) == 0)
  vlan_id = ofdpa_port->internal_vlan_id;

 eth_type = htons(ETH_P_IP);
 err = ofdpa_flow_tbl_term_mac(ofdpa_port, ofdpa_port->pport,
          in_pport_mask, eth_type,
          ofdpa_port->dev->dev_addr,
          dst_mac_mask, vlan_id, vlan_id_mask,
          copy_to_cpu, flags);
 if (err)
  return err;

 eth_type = htons(ETH_P_IPV6);
 err = ofdpa_flow_tbl_term_mac(ofdpa_port, ofdpa_port->pport,
          in_pport_mask, eth_type,
          ofdpa_port->dev->dev_addr,
          dst_mac_mask, vlan_id, vlan_id_mask,
          copy_to_cpu, flags);

 return err;
}

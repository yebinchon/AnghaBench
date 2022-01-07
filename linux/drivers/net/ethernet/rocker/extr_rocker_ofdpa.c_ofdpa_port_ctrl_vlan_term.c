
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ofdpa_port {int dev; int pport; int internal_vlan_id; } ;
struct ofdpa_ctrl {int copy_to_cpu; int eth_dst_mask; int eth_dst; int eth_type; } ;
typedef int __be16 ;


 int htons (int) ;
 int netdev_err (int ,char*,int) ;
 scalar_t__ ntohs (int ) ;
 int ofdpa_flow_tbl_term_mac (struct ofdpa_port*,int ,int,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int ofdpa_port_ctrl_vlan_term(struct ofdpa_port *ofdpa_port, int flags,
         const struct ofdpa_ctrl *ctrl, __be16 vlan_id)
{
 u32 in_pport_mask = 0xffffffff;
 __be16 vlan_id_mask = htons(0xffff);
 int err;

 if (ntohs(vlan_id) == 0)
  vlan_id = ofdpa_port->internal_vlan_id;

 err = ofdpa_flow_tbl_term_mac(ofdpa_port, ofdpa_port->pport, in_pport_mask,
          ctrl->eth_type, ctrl->eth_dst,
          ctrl->eth_dst_mask, vlan_id,
          vlan_id_mask, ctrl->copy_to_cpu,
          flags);

 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) ctrl term\n", err);

 return err;
}

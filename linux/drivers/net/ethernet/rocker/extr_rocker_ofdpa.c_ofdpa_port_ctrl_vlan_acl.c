
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {int pport; int dev; } ;
struct ofdpa_ctrl {int eth_type; int eth_dst_mask; int eth_dst; } ;
typedef int __be16 ;


 int ROCKER_GROUP_L2_INTERFACE (int ,int) ;
 int htons (int) ;
 int netdev_err (int ,char*,int) ;
 int ofdpa_flow_tbl_acl (struct ofdpa_port*,int,int,int,int const*,int const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int ofdpa_port_ctrl_vlan_acl(struct ofdpa_port *ofdpa_port, int flags,
        const struct ofdpa_ctrl *ctrl, __be16 vlan_id)
{
 u32 in_pport = ofdpa_port->pport;
 u32 in_pport_mask = 0xffffffff;
 u32 out_pport = 0;
 const u8 *eth_src = ((void*)0);
 const u8 *eth_src_mask = ((void*)0);
 __be16 vlan_id_mask = htons(0xffff);
 u8 ip_proto = 0;
 u8 ip_proto_mask = 0;
 u8 ip_tos = 0;
 u8 ip_tos_mask = 0;
 u32 group_id = ROCKER_GROUP_L2_INTERFACE(vlan_id, out_pport);
 int err;

 err = ofdpa_flow_tbl_acl(ofdpa_port, flags,
     in_pport, in_pport_mask,
     eth_src, eth_src_mask,
     ctrl->eth_dst, ctrl->eth_dst_mask,
     ctrl->eth_type,
     vlan_id, vlan_id_mask,
     ip_proto, ip_proto_mask,
     ip_tos, ip_tos_mask,
     group_id);

 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) ctrl ACL\n", err);

 return err;
}

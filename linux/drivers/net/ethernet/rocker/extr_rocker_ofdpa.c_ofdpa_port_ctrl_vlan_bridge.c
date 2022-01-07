
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ofdpa_port {int dev; } ;
struct ofdpa_ctrl {int copy_to_cpu; int eth_dst_mask; int eth_dst; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef int __be16 ;


 int ROCKER_GROUP_L2_FLOOD (int ,int ) ;
 int ROCKER_OF_DPA_TABLE_ID_ACL_POLICY ;
 int netdev_err (int ,char*,int) ;
 int ofdpa_flow_tbl_bridge (struct ofdpa_port*,int,int ,int ,int ,int ,int,int ,int ) ;
 int ofdpa_port_is_bridged (struct ofdpa_port*) ;

__attribute__((used)) static int ofdpa_port_ctrl_vlan_bridge(struct ofdpa_port *ofdpa_port,
           int flags, const struct ofdpa_ctrl *ctrl,
           __be16 vlan_id)
{
 enum rocker_of_dpa_table_id goto_tbl =
   ROCKER_OF_DPA_TABLE_ID_ACL_POLICY;
 u32 group_id = ROCKER_GROUP_L2_FLOOD(vlan_id, 0);
 u32 tunnel_id = 0;
 int err;

 if (!ofdpa_port_is_bridged(ofdpa_port))
  return 0;

 err = ofdpa_flow_tbl_bridge(ofdpa_port, flags,
        ctrl->eth_dst, ctrl->eth_dst_mask,
        vlan_id, tunnel_id,
        goto_tbl, group_id, ctrl->copy_to_cpu);

 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) ctrl FLOOD\n", err);

 return err;
}

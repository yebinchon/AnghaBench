
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ofdpa_port {int vlan_bitmap; int dev; int pport; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef int __be16 ;


 int OFDPA_OP_FLAG_REMOVE ;
 int ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC ;
 int change_bit (int ,int ) ;
 int htons (int) ;
 int netdev_err (int ,char*,int) ;
 int ntohs (int ) ;
 int ofdpa_flow_tbl_vlan (struct ofdpa_port*,int,int ,int ,int ,int,int,int ) ;
 int ofdpa_port_ctrl_vlan_add (struct ofdpa_port*,int,int ) ;
 int ofdpa_port_vid_to_vlan (struct ofdpa_port*,int,int*) ;
 int ofdpa_port_vlan_flood_group (struct ofdpa_port*,int,int ) ;
 int ofdpa_port_vlan_l2_groups (struct ofdpa_port*,int,int ,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ofdpa_port_vlan(struct ofdpa_port *ofdpa_port, int flags,
      u16 vid)
{
 enum rocker_of_dpa_table_id goto_tbl =
   ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC;
 u32 in_pport = ofdpa_port->pport;
 __be16 vlan_id = htons(vid);
 __be16 vlan_id_mask = htons(0xffff);
 __be16 internal_vlan_id;
 bool untagged;
 bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
 int err;

 internal_vlan_id = ofdpa_port_vid_to_vlan(ofdpa_port, vid, &untagged);

 if (adding &&
     test_bit(ntohs(internal_vlan_id), ofdpa_port->vlan_bitmap))
  return 0;
 else if (!adding &&
   !test_bit(ntohs(internal_vlan_id), ofdpa_port->vlan_bitmap))
  return 0;

 change_bit(ntohs(internal_vlan_id), ofdpa_port->vlan_bitmap);

 if (adding) {
  err = ofdpa_port_ctrl_vlan_add(ofdpa_port, flags,
            internal_vlan_id);
  if (err) {
   netdev_err(ofdpa_port->dev, "Error (%d) port ctrl vlan add\n", err);
   goto err_vlan_add;
  }
 }

 err = ofdpa_port_vlan_l2_groups(ofdpa_port, flags,
     internal_vlan_id, untagged);
 if (err) {
  netdev_err(ofdpa_port->dev, "Error (%d) port VLAN l2 groups\n", err);
  goto err_vlan_l2_groups;
 }

 err = ofdpa_port_vlan_flood_group(ofdpa_port, flags,
       internal_vlan_id);
 if (err) {
  netdev_err(ofdpa_port->dev, "Error (%d) port VLAN l2 flood group\n", err);
  goto err_flood_group;
 }

 err = ofdpa_flow_tbl_vlan(ofdpa_port, flags,
      in_pport, vlan_id, vlan_id_mask,
      goto_tbl, untagged, internal_vlan_id);
 if (err)
  netdev_err(ofdpa_port->dev, "Error (%d) port VLAN table\n", err);

 return 0;

err_vlan_add:
err_vlan_l2_groups:
err_flood_group:
 change_bit(ntohs(internal_vlan_id), ofdpa_port->vlan_bitmap);
 return err;
}

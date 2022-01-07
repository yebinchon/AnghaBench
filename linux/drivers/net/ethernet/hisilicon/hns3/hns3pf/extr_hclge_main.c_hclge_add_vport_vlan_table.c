
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hclge_vport_vlan_cfg {int hd_tbl_status; int node; int vlan_id; } ;
struct hclge_vport {int vlan_list; } ;


 int GFP_KERNEL ;
 struct hclge_vport_vlan_cfg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void hclge_add_vport_vlan_table(struct hclge_vport *vport, u16 vlan_id,
           bool writen_to_tbl)
{
 struct hclge_vport_vlan_cfg *vlan;

 vlan = kzalloc(sizeof(*vlan), GFP_KERNEL);
 if (!vlan)
  return;

 vlan->hd_tbl_status = writen_to_tbl;
 vlan->vlan_id = vlan_id;

 list_add_tail(&vlan->node, &vport->vlan_list);
}

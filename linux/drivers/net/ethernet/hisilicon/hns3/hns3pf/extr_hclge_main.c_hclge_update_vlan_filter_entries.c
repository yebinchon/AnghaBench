
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hclge_vport {int vport_id; struct hclge_dev* back; } ;
struct hclge_vlan_info {int vlan_tag; int vlan_proto; } ;
struct hclge_dev {int dummy; } ;


 scalar_t__ HNAE3_PORT_BASE_VLAN_ENABLE ;
 int hclge_add_vport_all_vlan_table (struct hclge_vport*) ;
 int hclge_rm_vport_all_vlan_table (struct hclge_vport*,int) ;
 int hclge_set_vlan_filter_hw (struct hclge_dev*,int ,int ,int ,int) ;
 int htons (int ) ;

__attribute__((used)) static int hclge_update_vlan_filter_entries(struct hclge_vport *vport,
         u16 port_base_vlan_state,
         struct hclge_vlan_info *new_info,
         struct hclge_vlan_info *old_info)
{
 struct hclge_dev *hdev = vport->back;
 int ret;

 if (port_base_vlan_state == HNAE3_PORT_BASE_VLAN_ENABLE) {
  hclge_rm_vport_all_vlan_table(vport, 0);
  return hclge_set_vlan_filter_hw(hdev,
       htons(new_info->vlan_proto),
       vport->vport_id,
       new_info->vlan_tag,
       0);
 }

 ret = hclge_set_vlan_filter_hw(hdev, htons(old_info->vlan_proto),
           vport->vport_id, old_info->vlan_tag,
           1);
 if (ret)
  return ret;

 return hclge_add_vport_all_vlan_table(vport);
}

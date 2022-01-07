
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hnae3_handle {scalar_t__ port_base_vlan_state; } ;
struct hclge_vport {int vlan_del_fail_bmap; int vport_id; struct hclge_dev* back; } ;
struct hclge_dev {int state; } ;
typedef int __be16 ;


 int EBUSY ;
 int HCLGE_STATE_RST_HANDLING ;
 scalar_t__ HNAE3_PORT_BASE_VLAN_DISABLE ;
 int hclge_add_vport_vlan_table (struct hclge_vport*,int ,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_rm_vport_vlan_table (struct hclge_vport*,int ,int) ;
 int hclge_set_vlan_filter_hw (struct hclge_dev*,int ,int ,int ,int) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int hclge_set_vlan_filter(struct hnae3_handle *handle, __be16 proto,
     u16 vlan_id, bool is_kill)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 bool writen_to_tbl = 0;
 int ret = 0;





 if (test_bit(HCLGE_STATE_RST_HANDLING, &hdev->state) && is_kill) {
  set_bit(vlan_id, vport->vlan_del_fail_bmap);
  return -EBUSY;
 }







 if (handle->port_base_vlan_state == HNAE3_PORT_BASE_VLAN_DISABLE) {
  ret = hclge_set_vlan_filter_hw(hdev, proto, vport->vport_id,
            vlan_id, is_kill);
  writen_to_tbl = 1;
 }

 if (!ret) {
  if (is_kill)
   hclge_rm_vport_vlan_table(vport, vlan_id, 0);
  else
   hclge_add_vport_vlan_table(vport, vlan_id,
         writen_to_tbl);
 } else if (is_kill) {




  set_bit(vlan_id, vport->vlan_del_fail_bmap);
 }
 return ret;
}

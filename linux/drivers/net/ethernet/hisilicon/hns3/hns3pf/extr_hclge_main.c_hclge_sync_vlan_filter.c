
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hclge_vport {int vlan_del_fail_bmap; int vport_id; } ;
struct hclge_dev {int num_alloc_vport; struct hclge_vport* vport; } ;


 int EINVAL ;
 int ETH_P_8021Q ;
 int HCLGE_MAX_SYNC_COUNT ;
 int VLAN_N_VID ;
 int clear_bit (int ,int ) ;
 int find_first_bit (int ,int ) ;
 int hclge_rm_vport_vlan_table (struct hclge_vport*,int ,int) ;
 int hclge_set_vlan_filter_hw (struct hclge_dev*,int ,int ,int ,int) ;
 int htons (int ) ;

__attribute__((used)) static void hclge_sync_vlan_filter(struct hclge_dev *hdev)
{


 int i, ret, sync_cnt = 0;
 u16 vlan_id;


 for (i = 0; i < hdev->num_alloc_vport; i++) {
  struct hclge_vport *vport = &hdev->vport[i];

  vlan_id = find_first_bit(vport->vlan_del_fail_bmap,
      VLAN_N_VID);
  while (vlan_id != VLAN_N_VID) {
   ret = hclge_set_vlan_filter_hw(hdev, htons(ETH_P_8021Q),
             vport->vport_id, vlan_id,
             1);
   if (ret && ret != -EINVAL)
    return;

   clear_bit(vlan_id, vport->vlan_del_fail_bmap);
   hclge_rm_vport_vlan_table(vport, vlan_id, 0);

   sync_cnt++;
   if (sync_cnt >= 60)
    return;

   vlan_id = find_first_bit(vport->vlan_del_fail_bmap,
       VLAN_N_VID);
  }
 }
}

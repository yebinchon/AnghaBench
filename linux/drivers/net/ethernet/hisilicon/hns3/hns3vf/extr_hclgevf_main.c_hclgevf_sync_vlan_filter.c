
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int vlan_del_fail_bmap; struct hnae3_handle nic; } ;


 int ETH_P_8021Q ;
 int HCLGEVF_MAX_SYNC_COUNT ;
 scalar_t__ VLAN_N_VID ;
 int clear_bit (scalar_t__,int ) ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int hclgevf_set_vlan_filter (struct hnae3_handle*,int ,scalar_t__,int) ;
 int htons (int ) ;

__attribute__((used)) static void hclgevf_sync_vlan_filter(struct hclgevf_dev *hdev)
{

 struct hnae3_handle *handle = &hdev->nic;
 int ret, sync_cnt = 0;
 u16 vlan_id;

 vlan_id = find_first_bit(hdev->vlan_del_fail_bmap, VLAN_N_VID);
 while (vlan_id != VLAN_N_VID) {
  ret = hclgevf_set_vlan_filter(handle, htons(ETH_P_8021Q),
           vlan_id, 1);
  if (ret)
   return;

  clear_bit(vlan_id, hdev->vlan_del_fail_bmap);
  sync_cnt++;
  if (sync_cnt >= 60)
   return;

  vlan_id = find_first_bit(hdev->vlan_del_fail_bmap, VLAN_N_VID);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlan_id ;
typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int vlan_del_fail_bmap; int state; } ;
typedef int proto ;
typedef int __be16 ;


 int EBUSY ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int HCLGEVF_MAX_VLAN_ID ;
 int HCLGEVF_STATE_RST_HANDLING ;
 int HCLGEVF_VLAN_MBX_MSG_LEN ;
 int HCLGE_MBX_SET_VLAN ;
 int HCLGE_MBX_VLAN_FILTER ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int*,int,int,int *,int ) ;
 int htons (int ) ;
 int memcpy (int*,int *,int) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hclgevf_set_vlan_filter(struct hnae3_handle *handle,
       __be16 proto, u16 vlan_id,
       bool is_kill)
{

 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 u8 msg_data[5];
 int ret;

 if (vlan_id > HCLGEVF_MAX_VLAN_ID)
  return -EINVAL;

 if (proto != htons(ETH_P_8021Q))
  return -EPROTONOSUPPORT;





 if (test_bit(HCLGEVF_STATE_RST_HANDLING, &hdev->state) && is_kill) {
  set_bit(vlan_id, hdev->vlan_del_fail_bmap);
  return -EBUSY;
 }

 msg_data[0] = is_kill;
 memcpy(&msg_data[1], &vlan_id, sizeof(vlan_id));
 memcpy(&msg_data[3], &proto, sizeof(proto));
 ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_VLAN,
       HCLGE_MBX_VLAN_FILTER, msg_data,
       5, 0, ((void*)0), 0);





 if (is_kill && ret)
  set_bit(vlan_id, hdev->vlan_del_fail_bmap);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_handle {int port_base_vlan_state; } ;
struct hclgevf_dev {TYPE_1__* pdev; struct hnae3_handle nic; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MBX_GET_PORT_BASE_VLAN_STATE ;
 int HCLGE_MBX_SET_VLAN ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;

__attribute__((used)) static int hclgevf_get_port_base_vlan_filter_state(struct hclgevf_dev *hdev)
{
 struct hnae3_handle *nic = &hdev->nic;
 u8 resp_msg;
 int ret;

 ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_VLAN,
       HCLGE_MBX_GET_PORT_BASE_VLAN_STATE,
       ((void*)0), 0, 1, &resp_msg, sizeof(u8));
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "VF request to get port based vlan state failed %d",
   ret);
  return ret;
 }

 nic->port_base_vlan_state = resp_msg;

 return 0;
}

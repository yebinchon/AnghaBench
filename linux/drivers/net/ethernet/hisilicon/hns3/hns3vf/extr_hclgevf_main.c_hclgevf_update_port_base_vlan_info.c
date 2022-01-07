
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct hnae3_handle {scalar_t__ port_base_vlan_state; } ;
struct hclgevf_dev {struct hnae3_handle nic; } ;


 int HCLGE_MBX_PORT_BASE_VLAN_CFG ;
 int HCLGE_MBX_SET_VLAN ;
 int HNAE3_DOWN_CLIENT ;
 scalar_t__ HNAE3_PORT_BASE_VLAN_DISABLE ;
 scalar_t__ HNAE3_PORT_BASE_VLAN_ENABLE ;
 int HNAE3_UP_CLIENT ;
 int hclgevf_notify_client (struct hclgevf_dev*,int ) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void hclgevf_update_port_base_vlan_info(struct hclgevf_dev *hdev, u16 state,
     u8 *port_base_vlan_info, u8 data_size)
{
 struct hnae3_handle *nic = &hdev->nic;

 rtnl_lock();
 hclgevf_notify_client(hdev, HNAE3_DOWN_CLIENT);
 rtnl_unlock();


 hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_VLAN,
        HCLGE_MBX_PORT_BASE_VLAN_CFG,
        port_base_vlan_info, data_size,
        0, ((void*)0), 0);

 if (state == HNAE3_PORT_BASE_VLAN_DISABLE)
  nic->port_base_vlan_state = HNAE3_PORT_BASE_VLAN_DISABLE;
 else
  nic->port_base_vlan_state = HNAE3_PORT_BASE_VLAN_ENABLE;

 rtnl_lock();
 hclgevf_notify_client(hdev, HNAE3_UP_CLIENT);
 rtnl_unlock();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_3__ {int * mac_addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;
typedef int msg_data ;


 int ETH_ALEN ;
 int HCLGE_MBX_MAC_VLAN_UC_ADD ;
 int HCLGE_MBX_MAC_VLAN_UC_MODIFY ;
 int HCLGE_MBX_SET_UNICAST ;
 int ether_addr_copy (int *,int *) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int,int,int *,int ) ;

__attribute__((used)) static int hclgevf_set_mac_addr(struct hnae3_handle *handle, void *p,
    bool is_first)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 u8 *old_mac_addr = (u8 *)hdev->hw.mac.mac_addr;
 u8 *new_mac_addr = (u8 *)p;
 u8 msg_data[ETH_ALEN * 2];
 u16 subcode;
 int status;

 ether_addr_copy(msg_data, new_mac_addr);
 ether_addr_copy(&msg_data[ETH_ALEN], old_mac_addr);

 subcode = is_first ? HCLGE_MBX_MAC_VLAN_UC_ADD :
   HCLGE_MBX_MAC_VLAN_UC_MODIFY;

 status = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_UNICAST,
          subcode, msg_data, sizeof(msg_data),
          1, ((void*)0), 0);
 if (!status)
  ether_addr_copy(hdev->hw.mac.mac_addr, new_mac_addr);

 return status;
}

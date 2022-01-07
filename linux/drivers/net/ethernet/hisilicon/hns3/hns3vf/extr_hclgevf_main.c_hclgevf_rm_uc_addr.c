
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;


 int ETH_ALEN ;
 int HCLGE_MBX_MAC_VLAN_UC_REMOVE ;
 int HCLGE_MBX_SET_UNICAST ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,unsigned char const*,int ,int,int *,int ) ;

__attribute__((used)) static int hclgevf_rm_uc_addr(struct hnae3_handle *handle,
         const unsigned char *addr)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_UNICAST,
        HCLGE_MBX_MAC_VLAN_UC_REMOVE,
        addr, ETH_ALEN, 0, ((void*)0), 0);
}

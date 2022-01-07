
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;
typedef int new_mtu ;


 int HCLGE_MBX_SET_MTU ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int,int,int *,int ) ;

__attribute__((used)) static int hclgevf_set_mtu(struct hnae3_handle *handle, int new_mtu)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 return hclgevf_send_mbx_msg(hdev, HCLGE_MBX_SET_MTU, 0, (u8 *)&new_mtu,
        sizeof(new_mtu), 1, ((void*)0), 0);
}

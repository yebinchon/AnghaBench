
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hclgevf_dev {int dummy; } ;
typedef int send_msg ;
typedef int resp_msg ;


 int HCLGEVF_ADVERTISING ;
 int HCLGEVF_SUPPORTED ;
 int HCLGE_MBX_GET_LINK_MODE ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int,int,int *,int) ;

__attribute__((used)) static void hclgevf_update_link_mode(struct hclgevf_dev *hdev)
{


 u8 send_msg;
 u8 resp_msg;

 send_msg = 0;
 hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_LINK_MODE, 0,
        &send_msg, sizeof(send_msg), 0,
        &resp_msg, sizeof(resp_msg));
 send_msg = 1;
 hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_LINK_MODE, 0,
        &send_msg, sizeof(send_msg), 0,
        &resp_msg, sizeof(resp_msg));
}

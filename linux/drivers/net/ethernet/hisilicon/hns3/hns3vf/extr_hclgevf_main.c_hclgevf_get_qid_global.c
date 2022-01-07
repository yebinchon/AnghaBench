
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;
typedef int resp_data ;
typedef int queue_id ;
typedef int msg_data ;


 int HCLGE_MBX_GET_QID_IN_PF ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int,int,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static u16 hclgevf_get_qid_global(struct hnae3_handle *handle, u16 queue_id)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 u8 msg_data[2], resp_data[2];
 u16 qid_in_pf = 0;
 int ret;

 memcpy(&msg_data[0], &queue_id, sizeof(queue_id));

 ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_QID_IN_PF, 0, msg_data,
       sizeof(msg_data), 1, resp_data,
       sizeof(resp_data));
 if (!ret)
  qid_in_pf = *(u16 *)resp_data;

 return qid_in_pf;
}

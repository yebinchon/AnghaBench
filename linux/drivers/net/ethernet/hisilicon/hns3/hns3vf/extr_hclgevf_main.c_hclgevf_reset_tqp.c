
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;
typedef int queue_id ;
typedef int msg_data ;


 int HCLGE_MBX_QUEUE_RESET ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int,int,int *,int ) ;
 int hclgevf_tqp_enable (struct hclgevf_dev*,int ,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclgevf_reset_tqp(struct hnae3_handle *handle, u16 queue_id)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 u8 msg_data[2];
 int ret;

 memcpy(msg_data, &queue_id, sizeof(queue_id));


 ret = hclgevf_tqp_enable(hdev, queue_id, 0, 0);
 if (ret)
  return ret;

 return hclgevf_send_mbx_msg(hdev, HCLGE_MBX_QUEUE_RESET, 0, msg_data,
        sizeof(msg_data), 1, ((void*)0), 0);
}

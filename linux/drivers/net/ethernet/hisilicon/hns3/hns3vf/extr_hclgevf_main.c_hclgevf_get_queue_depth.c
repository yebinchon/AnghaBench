
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclgevf_dev {int num_rx_desc; int num_tx_desc; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_TQPS_DEPTH_INFO_LEN ;
 int HCLGE_MBX_GET_QDEPTH ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclgevf_get_queue_depth(struct hclgevf_dev *hdev)
{

 u8 resp_msg[4];
 int ret;

 ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_QDEPTH, 0, ((void*)0), 0,
       1, resp_msg,
       4);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "VF request to get tqp depth info from PF failed %d",
   ret);
  return ret;
 }

 memcpy(&hdev->num_tx_desc, &resp_msg[0], sizeof(u16));
 memcpy(&hdev->num_rx_desc, &resp_msg[2], sizeof(u16));

 return 0;
}

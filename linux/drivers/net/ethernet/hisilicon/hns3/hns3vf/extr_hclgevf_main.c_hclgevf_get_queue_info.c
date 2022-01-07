
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclgevf_dev {int rx_buf_len; int rss_size_max; int num_tqps; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_TQPS_RSS_INFO_LEN ;
 int HCLGE_MBX_GET_QINFO ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclgevf_get_queue_info(struct hclgevf_dev *hdev)
{

 u8 resp_msg[6];
 int status;

 status = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_QINFO, 0, ((void*)0), 0,
          1, resp_msg,
          6);
 if (status) {
  dev_err(&hdev->pdev->dev,
   "VF request to get tqp info from PF failed %d",
   status);
  return status;
 }

 memcpy(&hdev->num_tqps, &resp_msg[0], sizeof(u16));
 memcpy(&hdev->rss_size_max, &resp_msg[2], sizeof(u16));
 memcpy(&hdev->rx_buf_len, &resp_msg[4], sizeof(u16));

 return 0;
}

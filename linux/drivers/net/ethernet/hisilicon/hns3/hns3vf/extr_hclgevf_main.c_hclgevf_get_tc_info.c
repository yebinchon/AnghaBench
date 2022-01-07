
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclgevf_dev {int hw_tc_map; TYPE_1__* pdev; } ;
typedef int resp_msg ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MBX_GET_TCINFO ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;

__attribute__((used)) static int hclgevf_get_tc_info(struct hclgevf_dev *hdev)
{
 u8 resp_msg;
 int status;

 status = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_TCINFO, 0, ((void*)0), 0,
          1, &resp_msg, sizeof(resp_msg));
 if (status) {
  dev_err(&hdev->pdev->dev,
   "VF request to get TC info from PF failed %d",
   status);
  return status;
 }

 hdev->hw_tc_map = resp_msg;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclgevf_dev {TYPE_1__* pdev; } ;
typedef int resp_msg ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MBX_GET_LINK_STATUS ;
 int dev_err (int *,char*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;

__attribute__((used)) static void hclgevf_request_link_info(struct hclgevf_dev *hdev)
{
 int status;
 u8 resp_msg;

 status = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_GET_LINK_STATUS, 0, ((void*)0),
          0, 0, &resp_msg, sizeof(resp_msg));
 if (status)
  dev_err(&hdev->pdev->dev,
   "VF failed to fetch link status(%d) from PF", status);
}

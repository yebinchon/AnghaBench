
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;




 int dev_err (int *,char*,...) ;

__attribute__((used)) static int hclge_get_mac_ethertype_cmd_status(struct hclge_dev *hdev,
           u16 cmdq_resp, u8 resp_code)
{





 int return_status;

 if (cmdq_resp) {
  dev_err(&hdev->pdev->dev,
   "cmdq execute failed for get_mac_ethertype_cmd_status, status=%d.\n",
   cmdq_resp);
  return -EIO;
 }

 switch (resp_code) {
 case 0:
 case 1:
  return_status = 0;
  break;
 case 2:
  dev_err(&hdev->pdev->dev,
   "add mac ethertype failed for manager table overflow.\n");
  return_status = -EIO;
  break;
 case 3:
  dev_err(&hdev->pdev->dev,
   "add mac ethertype failed for key conflict.\n");
  return_status = -EIO;
  break;
 default:
  dev_err(&hdev->pdev->dev,
   "add mac ethertype failed for undefined, code=%d.\n",
   resp_code);
  return_status = -EIO;
 }

 return return_status;
}

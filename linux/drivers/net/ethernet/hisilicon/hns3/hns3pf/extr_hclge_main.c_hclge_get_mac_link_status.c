
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_link_status_cmd {int status; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_LINK_STATUS_UP_M ;
 int HCLGE_OPC_QUERY_LINK_STATUS ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_get_mac_link_status(struct hclge_dev *hdev)
{
 struct hclge_link_status_cmd *req;
 struct hclge_desc desc;
 int link_status;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_LINK_STATUS, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev, "get link status cmd failed %d\n",
   ret);
  return ret;
 }

 req = (struct hclge_link_status_cmd *)desc.data;
 link_status = req->status & HCLGE_LINK_STATUS_UP_M;

 return !!link_status;
}

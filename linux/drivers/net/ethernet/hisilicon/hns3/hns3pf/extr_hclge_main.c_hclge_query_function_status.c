
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_func_status_cmd {scalar_t__ pf_state; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_QUERY_FUNC_STATUS ;
 int HCLGE_QUERY_MAX_CNT ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_parse_func_status (struct hclge_dev*,struct hclge_func_status_cmd*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hclge_query_function_status(struct hclge_dev *hdev)
{


 struct hclge_func_status_cmd *req;
 struct hclge_desc desc;
 int timeout = 0;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_FUNC_STATUS, 1);
 req = (struct hclge_func_status_cmd *)desc.data;

 do {
  ret = hclge_cmd_send(&hdev->hw, &desc, 1);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "query function status failed %d.\n", ret);
   return ret;
  }


  if (req->pf_state)
   break;
  usleep_range(1000, 2000);
 } while (timeout++ < 5);

 ret = hclge_parse_func_status(hdev, req);

 return ret;
}

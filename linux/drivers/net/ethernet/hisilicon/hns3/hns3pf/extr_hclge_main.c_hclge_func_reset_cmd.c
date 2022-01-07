
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_reset_cmd {int fun_reset_vfid; int mac_func_reset; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CFG_RESET_FUNC_B ;
 int HCLGE_OPC_CFG_RST_TRIGGER ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;

int hclge_func_reset_cmd(struct hclge_dev *hdev, int func_id)
{
 struct hclge_desc desc;
 struct hclge_reset_cmd *req = (struct hclge_reset_cmd *)desc.data;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_RST_TRIGGER, 0);
 hnae3_set_bit(req->mac_func_reset, HCLGE_CFG_RESET_FUNC_B, 1);
 req->fun_reset_vfid = func_id;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "send function reset cmd fail, status =%d\n", ret);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_promisc_param {int enable; int vf_id; } ;
struct hclge_promisc_cfg_cmd {int flag; int vf_id; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_CFG_PROMISC_MODE ;
 int HCLGE_PROMISC_EN_B ;
 int HCLGE_PROMISC_RX_EN_B ;
 int HCLGE_PROMISC_TX_EN_B ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

int hclge_cmd_set_promisc_mode(struct hclge_dev *hdev,
          struct hclge_promisc_param *param)
{
 struct hclge_promisc_cfg_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_PROMISC_MODE, 0);

 req = (struct hclge_promisc_cfg_cmd *)desc.data;
 req->vf_id = param->vf_id;






 req->flag = (param->enable << HCLGE_PROMISC_EN_B) |
  HCLGE_PROMISC_TX_EN_B | HCLGE_PROMISC_RX_EN_B;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Set promisc mode fail, status is %d.\n", ret);

 return ret;
}

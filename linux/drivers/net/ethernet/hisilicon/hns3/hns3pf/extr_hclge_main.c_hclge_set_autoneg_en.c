
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_config_auto_neg_cmd {int cfg_an_cmd_flag; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MAC_CFG_AN_EN_B ;
 int HCLGE_OPC_CONFIG_AN_MODE ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,unsigned int) ;

__attribute__((used)) static int hclge_set_autoneg_en(struct hclge_dev *hdev, bool enable)
{
 struct hclge_config_auto_neg_cmd *req;
 struct hclge_desc desc;
 u32 flag = 0;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_AN_MODE, 0);

 req = (struct hclge_config_auto_neg_cmd *)desc.data;
 if (enable)
  hnae3_set_bit(flag, HCLGE_MAC_CFG_AN_EN_B, 1U);
 req->cfg_an_cmd_flag = cpu_to_le32(flag);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "auto neg set cmd failed %d.\n",
   ret);

 return ret;
}

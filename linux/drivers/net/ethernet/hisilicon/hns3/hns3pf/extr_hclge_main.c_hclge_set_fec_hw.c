
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_config_fec_cmd {int fec_mode; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int HCLGE_MAC_CFG_FEC_AUTO_EN_B ;
 int HCLGE_MAC_CFG_FEC_MODE_M ;
 int HCLGE_MAC_CFG_FEC_MODE_S ;
 int HCLGE_MAC_FEC_BASER ;
 int HCLGE_MAC_FEC_RS ;
 int HCLGE_OPC_CONFIG_FEC_MODE ;
 int HNAE3_FEC_AUTO ;
 int HNAE3_FEC_BASER ;
 int HNAE3_FEC_RS ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;
 int hnae3_set_field (int ,int ,int ,int ) ;

__attribute__((used)) static int hclge_set_fec_hw(struct hclge_dev *hdev, u32 fec_mode)
{
 struct hclge_config_fec_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_FEC_MODE, 0);

 req = (struct hclge_config_fec_cmd *)desc.data;
 if (fec_mode & BIT(HNAE3_FEC_AUTO))
  hnae3_set_bit(req->fec_mode, HCLGE_MAC_CFG_FEC_AUTO_EN_B, 1);
 if (fec_mode & BIT(HNAE3_FEC_RS))
  hnae3_set_field(req->fec_mode, HCLGE_MAC_CFG_FEC_MODE_M,
    HCLGE_MAC_CFG_FEC_MODE_S, HCLGE_MAC_FEC_RS);
 if (fec_mode & BIT(HNAE3_FEC_BASER))
  hnae3_set_field(req->fec_mode, HCLGE_MAC_CFG_FEC_MODE_M,
    HCLGE_MAC_CFG_FEC_MODE_S, HCLGE_MAC_FEC_BASER);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "set fec mode failed %d.\n", ret);

 return ret;
}

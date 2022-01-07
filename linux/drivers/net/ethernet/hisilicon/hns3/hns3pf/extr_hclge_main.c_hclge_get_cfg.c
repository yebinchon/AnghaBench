
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_param_cmd {int offset; } ;
struct hclge_cfg {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CFG_OFFSET_M ;
 int HCLGE_CFG_OFFSET_S ;
 unsigned int HCLGE_CFG_RD_LEN_BYTES ;
 int HCLGE_CFG_RD_LEN_M ;
 int HCLGE_CFG_RD_LEN_S ;
 unsigned int HCLGE_CFG_RD_LEN_UNIT ;
 int HCLGE_OPC_GET_CFG_PARAM ;
 int HCLGE_PF_CFG_DESC_NUM ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_parse_cfg (struct hclge_cfg*,struct hclge_desc*) ;
 int hnae3_set_field (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int hclge_get_cfg(struct hclge_dev *hdev, struct hclge_cfg *hcfg)
{
 struct hclge_desc desc[HCLGE_PF_CFG_DESC_NUM];
 struct hclge_cfg_param_cmd *req;
 unsigned int i;
 int ret;

 for (i = 0; i < HCLGE_PF_CFG_DESC_NUM; i++) {
  u32 offset = 0;

  req = (struct hclge_cfg_param_cmd *)desc[i].data;
  hclge_cmd_setup_basic_desc(&desc[i], HCLGE_OPC_GET_CFG_PARAM,
        1);
  hnae3_set_field(offset, HCLGE_CFG_OFFSET_M,
    HCLGE_CFG_OFFSET_S, i * HCLGE_CFG_RD_LEN_BYTES);

  hnae3_set_field(offset, HCLGE_CFG_RD_LEN_M, HCLGE_CFG_RD_LEN_S,
    HCLGE_CFG_RD_LEN_BYTES / HCLGE_CFG_RD_LEN_UNIT);
  req->offset = cpu_to_le32(offset);
 }

 ret = hclge_cmd_send(&hdev->hw, desc, HCLGE_PF_CFG_DESC_NUM);
 if (ret) {
  dev_err(&hdev->pdev->dev, "get config failed %d.\n", ret);
  return ret;
 }

 hclge_parse_cfg(hcfg, desc);

 return 0;
}

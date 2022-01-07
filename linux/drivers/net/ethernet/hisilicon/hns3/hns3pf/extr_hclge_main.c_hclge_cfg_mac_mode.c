
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_config_mac_mode_cmd {int txrx_pad_fcs_loop_en; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MAC_FCS_TX_B ;
 int HCLGE_MAC_PAD_RX_B ;
 int HCLGE_MAC_PAD_TX_B ;
 int HCLGE_MAC_RX_EN_B ;
 int HCLGE_MAC_RX_FCS_B ;
 int HCLGE_MAC_RX_FCS_STRIP_B ;
 int HCLGE_MAC_RX_OVERSIZE_TRUNCATE_B ;
 int HCLGE_MAC_TX_EN_B ;
 int HCLGE_MAC_TX_OVERSIZE_TRUNCATE_B ;
 int HCLGE_MAC_TX_UNDER_MIN_ERR_B ;
 int HCLGE_OPC_CONFIG_MAC_MODE ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,unsigned int) ;

__attribute__((used)) static void hclge_cfg_mac_mode(struct hclge_dev *hdev, bool enable)
{
 struct hclge_desc desc;
 struct hclge_config_mac_mode_cmd *req =
  (struct hclge_config_mac_mode_cmd *)desc.data;
 u32 loop_en = 0;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_MAC_MODE, 0);

 if (enable) {
  hnae3_set_bit(loop_en, HCLGE_MAC_TX_EN_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_RX_EN_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_PAD_TX_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_PAD_RX_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_FCS_TX_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_RX_FCS_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_RX_FCS_STRIP_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_TX_OVERSIZE_TRUNCATE_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_RX_OVERSIZE_TRUNCATE_B, 1U);
  hnae3_set_bit(loop_en, HCLGE_MAC_TX_UNDER_MIN_ERR_B, 1U);
 }

 req->txrx_pad_fcs_loop_en = cpu_to_le32(loop_en);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "mac enable fail, ret =%d.\n", ret);
}

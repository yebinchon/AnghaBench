
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int * data; } ;
struct hclge_config_mac_mode_cmd {int txrx_pad_fcs_loop_en; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MAC_APP_LP_B ;
 int HCLGE_MAC_RX_EN_B ;
 int HCLGE_MAC_TX_EN_B ;
 int HCLGE_OPC_CONFIG_MAC_MODE ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_set_app_loopback(struct hclge_dev *hdev, bool en)
{
 struct hclge_config_mac_mode_cmd *req;
 struct hclge_desc desc;
 u32 loop_en;
 int ret;

 req = (struct hclge_config_mac_mode_cmd *)&desc.data[0];

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_MAC_MODE, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "mac loopback get fail, ret =%d.\n", ret);
  return ret;
 }


 loop_en = le32_to_cpu(req->txrx_pad_fcs_loop_en);
 hnae3_set_bit(loop_en, HCLGE_MAC_APP_LP_B, en ? 1 : 0);
 hnae3_set_bit(loop_en, HCLGE_MAC_TX_EN_B, en ? 1 : 0);
 hnae3_set_bit(loop_en, HCLGE_MAC_RX_EN_B, en ? 1 : 0);

 req->txrx_pad_fcs_loop_en = cpu_to_le32(loop_en);




 hclge_cmd_reuse_desc(&desc, 0);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "mac loopback set fail, ret =%d.\n", ret);
 return ret;
}

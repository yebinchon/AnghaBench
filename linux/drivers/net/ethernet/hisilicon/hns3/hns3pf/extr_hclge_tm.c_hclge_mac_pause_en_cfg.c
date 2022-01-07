
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw; } ;
struct hclge_desc {int * data; } ;


 int HCLGE_OPC_CFG_MAC_PAUSE_EN ;
 int HCLGE_RX_MAC_PAUSE_EN_MSK ;
 int HCLGE_TX_MAC_PAUSE_EN_MSK ;
 int cpu_to_le32 (int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

int hclge_mac_pause_en_cfg(struct hclge_dev *hdev, bool tx, bool rx)
{
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_MAC_PAUSE_EN, 0);

 desc.data[0] = cpu_to_le32((tx ? HCLGE_TX_MAC_PAUSE_EN_MSK : 0) |
  (rx ? HCLGE_RX_MAC_PAUSE_EN_MSK : 0));

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_pause_param_cmd {int pause_trans_time; int pause_trans_gap; } ;


 int HCLGE_OPC_CFG_MAC_PARA ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_pause_param_cfg (struct hclge_dev*,int const*,int ,int ) ;
 int le16_to_cpu (int ) ;

int hclge_pause_addr_cfg(struct hclge_dev *hdev, const u8 *mac_addr)
{
 struct hclge_cfg_pause_param_cmd *pause_param;
 struct hclge_desc desc;
 u16 trans_time;
 u8 trans_gap;
 int ret;

 pause_param = (struct hclge_cfg_pause_param_cmd *)desc.data;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_MAC_PARA, 1);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  return ret;

 trans_gap = pause_param->pause_trans_gap;
 trans_time = le16_to_cpu(pause_param->pause_trans_time);

 return hclge_pause_param_cfg(hdev, mac_addr, trans_gap, trans_time);
}

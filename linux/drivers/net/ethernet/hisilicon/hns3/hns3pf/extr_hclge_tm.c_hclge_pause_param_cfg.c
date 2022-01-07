
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_pause_param_cmd {int pause_trans_time; int pause_trans_gap; int mac_addr_extra; int mac_addr; } ;


 int HCLGE_OPC_CFG_MAC_PARA ;
 int cpu_to_le16 (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_pause_param_cfg(struct hclge_dev *hdev, const u8 *addr,
     u8 pause_trans_gap, u16 pause_trans_time)
{
 struct hclge_cfg_pause_param_cmd *pause_param;
 struct hclge_desc desc;

 pause_param = (struct hclge_cfg_pause_param_cmd *)desc.data;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CFG_MAC_PARA, 0);

 ether_addr_copy(pause_param->mac_addr, addr);
 ether_addr_copy(pause_param->mac_addr_extra, addr);
 pause_param->pause_trans_gap = pause_trans_gap;
 pause_param->pause_trans_time = cpu_to_le16(pause_trans_time);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}

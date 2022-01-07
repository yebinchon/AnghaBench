
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {void** data; } ;


 int HCLGE_OPC_TM_QS_SCH_MODE_CFG ;
 scalar_t__ HCLGE_SCH_MODE_DWRR ;
 int HCLGE_TM_TX_SCHD_DWRR_MSK ;
 void* cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_qs_schd_mode_cfg(struct hclge_dev *hdev, u16 qs_id, u8 mode)
{
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_QS_SCH_MODE_CFG, 0);

 if (mode == HCLGE_SCH_MODE_DWRR)
  desc.data[1] = cpu_to_le32(HCLGE_TM_TX_SCHD_DWRR_MSK);
 else
  desc.data[1] = 0;

 desc.data[0] = cpu_to_le32(qs_id);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}

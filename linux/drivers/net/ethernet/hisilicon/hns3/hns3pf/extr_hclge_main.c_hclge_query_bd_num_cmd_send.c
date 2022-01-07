
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw; } ;
struct hclge_desc {int flag; } ;


 int HCLGE_CMD_FLAG_NEXT ;
 int HCLGE_OPC_DFX_BD_NUM ;
 int cpu_to_le16 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

int hclge_query_bd_num_cmd_send(struct hclge_dev *hdev, struct hclge_desc *desc)
{

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_DFX_BD_NUM, 1);
 desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[1], HCLGE_OPC_DFX_BD_NUM, 1);
 desc[1].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[2], HCLGE_OPC_DFX_BD_NUM, 1);
 desc[2].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[3], HCLGE_OPC_DFX_BD_NUM, 1);

 return hclge_cmd_send(&hdev->hw, desc, 4);
}

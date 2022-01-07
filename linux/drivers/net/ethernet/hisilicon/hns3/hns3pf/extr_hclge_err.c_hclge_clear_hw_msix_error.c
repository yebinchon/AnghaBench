
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {void* flag; void* opcode; } ;


 int HCLGE_CMD_FLAG_IN ;
 int HCLGE_CMD_FLAG_NO_INTR ;
 int HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT ;
 int HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT ;
 void* cpu_to_le16 (int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int ) ;

__attribute__((used)) static int hclge_clear_hw_msix_error(struct hclge_dev *hdev,
         struct hclge_desc *desc, bool is_mpf,
         u32 bd_num)
{
 if (is_mpf)
  desc[0].opcode =
   cpu_to_le16(HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT);
 else
  desc[0].opcode = cpu_to_le16(HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT);

 desc[0].flag = cpu_to_le16(HCLGE_CMD_FLAG_NO_INTR | HCLGE_CMD_FLAG_IN);

 return hclge_cmd_send(&hdev->hw, &desc[0], bd_num);
}

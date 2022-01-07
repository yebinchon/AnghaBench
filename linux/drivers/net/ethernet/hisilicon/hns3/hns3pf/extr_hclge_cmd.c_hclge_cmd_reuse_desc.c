
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_desc {int flag; } ;


 int HCLGE_CMD_FLAG_IN ;
 int HCLGE_CMD_FLAG_NO_INTR ;
 int HCLGE_CMD_FLAG_WR ;
 int cpu_to_le16 (int) ;

void hclge_cmd_reuse_desc(struct hclge_desc *desc, bool is_read)
{
 desc->flag = cpu_to_le16(HCLGE_CMD_FLAG_NO_INTR | HCLGE_CMD_FLAG_IN);
 if (is_read)
  desc->flag |= cpu_to_le16(HCLGE_CMD_FLAG_WR);
 else
  desc->flag &= cpu_to_le16(~HCLGE_CMD_FLAG_WR);
}

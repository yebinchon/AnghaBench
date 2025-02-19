
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_dbg_reg_type_info {char* reg_type; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct hclge_dbg_reg_type_info*) ;
 int dev_info (int *,char*) ;
 int hclge_dbg_dump_dcb (struct hclge_dev*,char const*) ;
 int hclge_dbg_dump_reg_common (struct hclge_dev*,struct hclge_dbg_reg_type_info*,char const*) ;
 struct hclge_dbg_reg_type_info* hclge_dbg_reg_info ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void hclge_dbg_dump_reg_cmd(struct hclge_dev *hdev, const char *cmd_buf)
{
 struct hclge_dbg_reg_type_info *reg_info;
 bool has_dump = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(hclge_dbg_reg_info); i++) {
  reg_info = &hclge_dbg_reg_info[i];
  if (!strncmp(cmd_buf, reg_info->reg_type,
        strlen(reg_info->reg_type))) {
   hclge_dbg_dump_reg_common(hdev, reg_info, cmd_buf);
   has_dump = 1;
  }
 }

 if (strncmp(cmd_buf, "dcb", 3) == 0) {
  hclge_dbg_dump_dcb(hdev, &cmd_buf[sizeof("dcb")]);
  has_dump = 1;
 }

 if (!has_dump) {
  dev_info(&hdev->pdev->dev, "unknown command\n");
  return;
 }
}

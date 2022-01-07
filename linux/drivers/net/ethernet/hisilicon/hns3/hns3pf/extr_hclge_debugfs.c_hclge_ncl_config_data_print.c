
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CMD_DATA_NUM ;
 int HCLGE_CMD_NCL_CONFIG_BD_NUM ;
 int dev_info (int *,char*,int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void hclge_ncl_config_data_print(struct hclge_dev *hdev,
     struct hclge_desc *desc, int *offset,
     int *length)
{


 int i;
 int j;

 for (i = 0; i < HCLGE_CMD_NCL_CONFIG_BD_NUM; i++) {
  for (j = 0; j < 6; j++) {
   if (i == 0 && j == 0)
    continue;

   dev_info(&hdev->pdev->dev, "0x%04x | 0x%08x\n",
     *offset,
     le32_to_cpu(desc[i].data[j]));
   *offset += sizeof(u32);
   *length -= sizeof(u32);
   if (*length <= 0)
    return;
  }
 }
}

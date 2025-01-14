
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct TYPE_2__ {int dev; } ;


 size_t ARRAY_SIZE (int *) ;
 int HCLGE_DFX_REG_BD_NUM ;
 int dev_err (int *,char*,int) ;
 size_t* hclge_dfx_bd_offset_list ;
 int hclge_query_bd_num_cmd_send (struct hclge_dev*,struct hclge_desc*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_get_dfx_reg_bd_num(struct hclge_dev *hdev,
        int *bd_num_list,
        u32 type_num)
{


 u32 entries_per_desc, desc_index, index, offset, i;
 struct hclge_desc desc[4];
 int ret;

 ret = hclge_query_bd_num_cmd_send(hdev, desc);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Get dfx bd num fail, status is %d.\n", ret);
  return ret;
 }

 entries_per_desc = ARRAY_SIZE(desc[0].data);
 for (i = 0; i < type_num; i++) {
  offset = hclge_dfx_bd_offset_list[i];
  index = offset % entries_per_desc;
  desc_index = offset / entries_per_desc;
  bd_num_list[i] = le32_to_cpu(desc[desc_index].data[index]);
 }

 return ret;
}

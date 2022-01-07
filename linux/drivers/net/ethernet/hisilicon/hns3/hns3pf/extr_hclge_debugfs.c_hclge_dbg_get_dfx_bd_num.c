
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {scalar_t__* data; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int HCLGE_GET_DFX_REG_TYPE_CNT ;
 int dev_err (int *,char*,int) ;
 int hclge_query_bd_num_cmd_send (struct hclge_dev*,struct hclge_desc*) ;

__attribute__((used)) static int hclge_dbg_get_dfx_bd_num(struct hclge_dev *hdev, int offset)
{


 struct hclge_desc desc[4];
 int entries_per_desc;
 int index;
 int ret;

 ret = hclge_query_bd_num_cmd_send(hdev, desc);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "get dfx bdnum fail, ret = %d\n", ret);
  return ret;
 }

 entries_per_desc = ARRAY_SIZE(desc[0].data);
 index = offset % entries_per_desc;
 return (int)desc[offset / entries_per_desc].data[index];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int dev_err (int *,char*,int) ;
 int hclge_add_mgr_tbl (struct hclge_dev*,int *) ;
 int * hclge_mgr_table ;

__attribute__((used)) static int init_mgr_tbl(struct hclge_dev *hdev)
{
 int ret;
 int i;

 for (i = 0; i < ARRAY_SIZE(hclge_mgr_table); i++) {
  ret = hclge_add_mgr_tbl(hdev, &hclge_mgr_table[i]);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "add mac ethertype failed, ret =%d.\n",
    ret);
   return ret;
  }
 }

 return 0;
}

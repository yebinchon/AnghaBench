
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,char*,int,char*) ;

__attribute__((used)) static void hclge_title_idx_print(struct hclge_dev *hdev, bool flag, int index,
      char *title_buf, char *true_buf,
      char *false_buf)
{
 if (flag)
  dev_info(&hdev->pdev->dev, "%s(%d): %s\n", title_buf, index,
    true_buf);
 else
  dev_info(&hdev->pdev->dev, "%s(%d): %s\n", title_buf, index,
    false_buf);
}

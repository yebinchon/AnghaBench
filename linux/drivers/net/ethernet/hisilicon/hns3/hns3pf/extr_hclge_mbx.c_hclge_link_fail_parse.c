
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;





 int dev_warn (int *,char*) ;

__attribute__((used)) static void hclge_link_fail_parse(struct hclge_dev *hdev, u8 link_fail_code)
{
 switch (link_fail_code) {
 case 130:
  dev_warn(&hdev->pdev->dev, "Reference clock lost!\n");
  break;
 case 128:
  dev_warn(&hdev->pdev->dev, "SFP tx is disabled!\n");
  break;
 case 129:
  dev_warn(&hdev->pdev->dev, "SFP is absent!\n");
  break;
 default:
  break;
 }
}

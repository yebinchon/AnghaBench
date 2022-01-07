
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ae_dev {int dummy; } ;
struct hclge_dev {scalar_t__ reset_type; int reset_request; int reset_pending; int last_reset_time; int pdev; } ;


 scalar_t__ HNAE3_NONE_RESET ;
 int hclge_do_reset (struct hclge_dev*) ;
 void* hclge_get_reset_level (struct hnae3_ae_dev*,int *) ;
 int hclge_reset (struct hclge_dev*) ;
 int jiffies ;
 struct hnae3_ae_dev* pci_get_drvdata (int ) ;

__attribute__((used)) static void hclge_reset_subtask(struct hclge_dev *hdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(hdev->pdev);
 hdev->last_reset_time = jiffies;
 hdev->reset_type = hclge_get_reset_level(ae_dev, &hdev->reset_pending);
 if (hdev->reset_type != HNAE3_NONE_RESET)
  hclge_reset(hdev);


 hdev->reset_type = hclge_get_reset_level(ae_dev, &hdev->reset_request);
 if (hdev->reset_type != HNAE3_NONE_RESET)
  hclge_do_reset(hdev);

 hdev->reset_type = HNAE3_NONE_RESET;
}

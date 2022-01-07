
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_dev {scalar_t__ reset_level; int reset_request; TYPE_2__* pdev; scalar_t__ last_reset_time; scalar_t__ default_reset_request; int reset_timer; TYPE_1__* vport; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct hnae3_handle nic; } ;


 scalar_t__ HCLGE_RESET_INTERVAL ;
 scalar_t__ HNAE3_FUNC_RESET ;
 scalar_t__ HNAE3_GLOBAL_RESET ;
 int HZ ;
 int dev_info (int *,char*,scalar_t__) ;
 scalar_t__ hclge_get_reset_level (struct hnae3_ae_dev*,scalar_t__*) ;
 int hclge_reset_task_schedule (struct hclge_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int set_bit (scalar_t__,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hclge_reset_event(struct pci_dev *pdev, struct hnae3_handle *handle)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);
 struct hclge_dev *hdev = ae_dev->priv;
 if (!handle)
  handle = &hdev->vport[0].nic;

 if (time_before(jiffies, (hdev->last_reset_time +
      HCLGE_RESET_INTERVAL))) {
  mod_timer(&hdev->reset_timer, jiffies + HCLGE_RESET_INTERVAL);
  return;
 } else if (hdev->default_reset_request)
  hdev->reset_level =
   hclge_get_reset_level(ae_dev,
           &hdev->default_reset_request);
 else if (time_after(jiffies, (hdev->last_reset_time + 4 * 5 * HZ)))
  hdev->reset_level = HNAE3_FUNC_RESET;

 dev_info(&hdev->pdev->dev, "received reset event, reset type is %d\n",
   hdev->reset_level);


 set_bit(hdev->reset_level, &hdev->reset_request);
 hclge_reset_task_schedule(hdev);

 if (hdev->reset_level < HNAE3_GLOBAL_RESET)
  hdev->reset_level++;
}

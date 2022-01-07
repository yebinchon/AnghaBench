
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int reset_state; scalar_t__ mbx_event_pending; } ;


 int HCLGEVF_RESET_PENDING ;
 int hclgevf_mbx_task_schedule (struct hclgevf_dev*) ;
 int hclgevf_reset_task_schedule (struct hclgevf_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_deferred_task_schedule(struct hclgevf_dev *hdev)
{

 if (hdev->mbx_event_pending)
  hclgevf_mbx_task_schedule(hdev);

 if (test_bit(HCLGEVF_RESET_PENDING, &hdev->reset_state))
  hclgevf_reset_task_schedule(hdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclgevf_dev {int misc_vector; } ;
typedef int irqreturn_t ;
typedef enum hclgevf_evt_cause { ____Placeholder_hclgevf_evt_cause } hclgevf_evt_cause ;



 int HCLGEVF_VECTOR0_EVENT_OTHER ;

 int IRQ_HANDLED ;
 int hclgevf_check_evt_cause (struct hclgevf_dev*,int *) ;
 int hclgevf_clear_event_cause (struct hclgevf_dev*,int ) ;
 int hclgevf_enable_vector (int *,int) ;
 int hclgevf_mbx_handler (struct hclgevf_dev*) ;
 int hclgevf_reset_task_schedule (struct hclgevf_dev*) ;

__attribute__((used)) static irqreturn_t hclgevf_misc_irq_handle(int irq, void *data)
{
 enum hclgevf_evt_cause event_cause;
 struct hclgevf_dev *hdev = data;
 u32 clearval;

 hclgevf_enable_vector(&hdev->misc_vector, 0);
 event_cause = hclgevf_check_evt_cause(hdev, &clearval);

 switch (event_cause) {
 case 128:
  hclgevf_reset_task_schedule(hdev);
  break;
 case 129:
  hclgevf_mbx_handler(hdev);
  break;
 default:
  break;
 }

 if (event_cause != HCLGEVF_VECTOR0_EVENT_OTHER) {
  hclgevf_clear_event_cause(hdev, clearval);
  hclgevf_enable_vector(&hdev->misc_vector, 1);
 }

 return IRQ_HANDLED;
}

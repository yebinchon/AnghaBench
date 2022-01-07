
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_dev {int misc_vector; TYPE_1__* pdev; int reset_request; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;





 int HNAE3_UNKNOWN_RESET ;
 int IRQ_HANDLED ;
 int dev_warn (int *,char*) ;
 int hclge_check_event_cause (struct hclge_dev*,int*) ;
 int hclge_clear_event_cause (struct hclge_dev*,int,int) ;
 int hclge_enable_vector (int *,int) ;
 int hclge_mbx_task_schedule (struct hclge_dev*) ;
 int hclge_reset_task_schedule (struct hclge_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t hclge_misc_irq_handle(int irq, void *data)
{
 struct hclge_dev *hdev = data;
 u32 clearval = 0;
 u32 event_cause;

 hclge_enable_vector(&hdev->misc_vector, 0);
 event_cause = hclge_check_event_cause(hdev, &clearval);


 switch (event_cause) {
 case 130:
  set_bit(HNAE3_UNKNOWN_RESET, &hdev->reset_request);

 case 128:
  hclge_reset_task_schedule(hdev);
  break;
 case 129:
  hclge_mbx_task_schedule(hdev);
  break;
 default:
  dev_warn(&hdev->pdev->dev,
    "received unknown or unhandled event of vector0\n");
  break;
 }

 hclge_clear_event_cause(hdev, event_cause, clearval);






 if (!clearval ||
     event_cause == 129) {
  hclge_enable_vector(&hdev->misc_vector, 1);
 }

 return IRQ_HANDLED;
}

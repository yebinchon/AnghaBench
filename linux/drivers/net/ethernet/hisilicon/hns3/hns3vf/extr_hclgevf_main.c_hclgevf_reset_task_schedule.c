
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int rst_service_task; int state; } ;


 int HCLGEVF_STATE_REMOVING ;
 int HCLGEVF_STATE_RST_SERVICE_SCHED ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void hclgevf_reset_task_schedule(struct hclgevf_dev *hdev)
{
 if (!test_bit(HCLGEVF_STATE_RST_SERVICE_SCHED, &hdev->state) &&
     !test_bit(HCLGEVF_STATE_REMOVING, &hdev->state)) {
  set_bit(HCLGEVF_STATE_RST_SERVICE_SCHED, &hdev->state);
  schedule_work(&hdev->rst_service_task);
 }
}

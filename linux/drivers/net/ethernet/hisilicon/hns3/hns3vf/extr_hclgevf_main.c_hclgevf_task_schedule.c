
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int service_task; int state; } ;


 int HCLGEVF_STATE_DOWN ;
 int HCLGEVF_STATE_SERVICE_SCHED ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_task_schedule(struct hclgevf_dev *hdev)
{
 if (!test_bit(HCLGEVF_STATE_DOWN, &hdev->state) &&
     !test_and_set_bit(HCLGEVF_STATE_SERVICE_SCHED, &hdev->state))
  schedule_work(&hdev->service_task);
}

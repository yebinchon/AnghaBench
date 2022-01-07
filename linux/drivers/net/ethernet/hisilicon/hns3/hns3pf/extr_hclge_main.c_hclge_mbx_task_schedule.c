
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int mbx_service_task; int affinity_mask; int state; } ;


 int HCLGE_STATE_CMD_DISABLE ;
 int HCLGE_STATE_MBX_SERVICE_SCHED ;
 int cpumask_first (int *) ;
 int queue_work_on (int ,int ,int *) ;
 int system_wq ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hclge_mbx_task_schedule(struct hclge_dev *hdev)
{
 if (!test_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state) &&
     !test_and_set_bit(HCLGE_STATE_MBX_SERVICE_SCHED, &hdev->state))
  queue_work_on(cpumask_first(&hdev->affinity_mask), system_wq,
         &hdev->mbx_service_task);
}

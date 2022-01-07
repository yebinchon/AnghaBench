
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats_timer; } ;
struct hclge_dev {int service_task; int affinity_mask; int fd_arfs_expire_timer; TYPE_1__ hw_stats; int state; } ;


 int HCLGE_STATE_DOWN ;
 int HCLGE_STATE_REMOVING ;
 int HCLGE_STATE_SERVICE_SCHED ;
 int cpumask_first (int *) ;
 int mod_delayed_work_on (int ,int ,int *,unsigned long) ;
 int system_wq ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void hclge_task_schedule(struct hclge_dev *hdev, unsigned long delay_time)
{
 if (!test_bit(HCLGE_STATE_DOWN, &hdev->state) &&
     !test_bit(HCLGE_STATE_REMOVING, &hdev->state) &&
     !test_and_set_bit(HCLGE_STATE_SERVICE_SCHED, &hdev->state)) {
  hdev->hw_stats.stats_timer++;
  hdev->fd_arfs_expire_timer++;
  mod_delayed_work_on(cpumask_first(&hdev->affinity_mask),
        system_wq, &hdev->service_task,
        delay_time);
 }
}

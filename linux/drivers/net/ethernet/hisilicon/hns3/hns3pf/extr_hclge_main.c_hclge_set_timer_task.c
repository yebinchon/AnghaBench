
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int state; int service_task; } ;


 int HCLGE_STATE_DOWN ;
 int HCLGE_STATE_SERVICE_SCHED ;
 int HZ ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_task_schedule (struct hclge_dev*,int ) ;
 int round_jiffies_relative (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclge_set_timer_task(struct hnae3_handle *handle, bool enable)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (enable) {
  hclge_task_schedule(hdev, round_jiffies_relative(HZ));
 } else {



  set_bit(HCLGE_STATE_DOWN, &hdev->state);
  cancel_delayed_work_sync(&hdev->service_task);
  clear_bit(HCLGE_STATE_SERVICE_SCHED, &hdev->state);
 }
}

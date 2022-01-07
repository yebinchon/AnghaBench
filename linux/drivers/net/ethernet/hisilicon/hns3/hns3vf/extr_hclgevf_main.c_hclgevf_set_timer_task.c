
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int state; int service_task; int service_timer; } ;


 int HCLGEVF_STATE_SERVICE_SCHED ;
 scalar_t__ HZ ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void hclgevf_set_timer_task(struct hnae3_handle *handle, bool enable)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 if (enable) {
  mod_timer(&hdev->service_timer, jiffies + HZ);
 } else {
  del_timer_sync(&hdev->service_timer);
  cancel_work_sync(&hdev->service_task);
  clear_bit(HCLGEVF_STATE_SERVICE_SCHED, &hdev->state);
 }
}

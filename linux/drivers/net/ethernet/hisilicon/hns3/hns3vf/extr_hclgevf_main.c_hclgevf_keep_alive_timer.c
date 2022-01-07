
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hclgevf_dev {int keep_alive_timer; int keep_alive_task; } ;


 int HCLGEVF_KEEP_ALIVE_TASK_INTERVAL ;
 int HZ ;
 struct hclgevf_dev* from_timer (int ,struct timer_list*,int ) ;
 struct hclgevf_dev* hdev ;
 scalar_t__ jiffies ;
 int keep_alive_timer ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static void hclgevf_keep_alive_timer(struct timer_list *t)
{
 struct hclgevf_dev *hdev = from_timer(hdev, t, keep_alive_timer);

 schedule_work(&hdev->keep_alive_task);
 mod_timer(&hdev->keep_alive_timer, jiffies +
    HCLGEVF_KEEP_ALIVE_TASK_INTERVAL * HZ);
}

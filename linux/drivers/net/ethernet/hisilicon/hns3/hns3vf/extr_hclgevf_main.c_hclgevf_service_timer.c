
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hclgevf_dev {int stats_timer; int service_timer; } ;


 int HCLGEVF_GENERAL_TASK_INTERVAL ;
 int HZ ;
 struct hclgevf_dev* from_timer (int ,struct timer_list*,int ) ;
 int hclgevf_task_schedule (struct hclgevf_dev*) ;
 struct hclgevf_dev* hdev ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int service_timer ;

__attribute__((used)) static void hclgevf_service_timer(struct timer_list *t)
{
 struct hclgevf_dev *hdev = from_timer(hdev, t, service_timer);

 mod_timer(&hdev->service_timer, jiffies +
    HCLGEVF_GENERAL_TASK_INTERVAL * HZ);

 hdev->stats_timer++;
 hclgevf_task_schedule(hdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hns_nic_priv {int service_timer; } ;


 scalar_t__ SERVICE_TIMER_HZ ;
 struct hns_nic_priv* from_timer (int ,struct timer_list*,int ) ;
 int hns_nic_task_schedule (struct hns_nic_priv*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct hns_nic_priv* priv ;
 int service_timer ;

__attribute__((used)) static void hns_nic_service_timer(struct timer_list *t)
{
 struct hns_nic_priv *priv = from_timer(priv, t, service_timer);

 (void)mod_timer(&priv->service_timer, jiffies + SERVICE_TIMER_HZ);

 hns_nic_task_schedule(priv);
}

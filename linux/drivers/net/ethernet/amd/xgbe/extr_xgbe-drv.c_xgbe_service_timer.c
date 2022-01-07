
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int service_timer; int service_work; int dev_workqueue; } ;
struct timer_list {int dummy; } ;


 scalar_t__ HZ ;
 struct xgbe_prv_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct xgbe_prv_data* pdata ;
 int queue_work (int ,int *) ;
 int service_timer ;

__attribute__((used)) static void xgbe_service_timer(struct timer_list *t)
{
 struct xgbe_prv_data *pdata = from_timer(pdata, t, service_timer);

 queue_work(pdata->dev_workqueue, &pdata->service_work);

 mod_timer(&pdata->service_timer, jiffies + HZ);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int service_timer; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void xgbe_start_timers(struct xgbe_prv_data *pdata)
{
 mod_timer(&pdata->service_timer, jiffies + HZ);
}

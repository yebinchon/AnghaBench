
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int is_auto_deep_sleep_enabled; int wakeup_dev_required; int auto_deep_sleep_timeout; int auto_deepsleep_timer; scalar_t__ is_deep_sleep; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

int lbs_enter_auto_deep_sleep(struct lbs_private *priv)
{
 priv->is_auto_deep_sleep_enabled = 1;
 if (priv->is_deep_sleep)
  priv->wakeup_dev_required = 1;
 mod_timer(&priv->auto_deepsleep_timer ,
   jiffies + (priv->auto_deep_sleep_timeout * HZ)/1000);

 return 0;
}

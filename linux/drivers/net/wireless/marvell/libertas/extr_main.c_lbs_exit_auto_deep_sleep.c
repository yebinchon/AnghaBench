
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int auto_deepsleep_timer; scalar_t__ auto_deep_sleep_timeout; scalar_t__ is_auto_deep_sleep_enabled; } ;


 int del_timer (int *) ;

int lbs_exit_auto_deep_sleep(struct lbs_private *priv)
{
 priv->is_auto_deep_sleep_enabled = 0;
 priv->auto_deep_sleep_timeout = 0;
 del_timer(&priv->auto_deepsleep_timer);

 return 0;
}

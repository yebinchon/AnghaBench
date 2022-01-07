
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int auto_tdls_timer_active; int auto_tdls_timer; } ;


 int MWIFIEX_TIMER_10S ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mwifiex_check_auto_tdls ;
 int timer_setup (int *,int ,int ) ;

void mwifiex_setup_auto_tdls_timer(struct mwifiex_private *priv)
{
 timer_setup(&priv->auto_tdls_timer, mwifiex_check_auto_tdls, 0);
 priv->auto_tdls_timer_active = 1;
 mod_timer(&priv->auto_tdls_timer,
    jiffies + msecs_to_jiffies(MWIFIEX_TIMER_10S));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int watchdog; TYPE_1__* cfg; } ;
struct TYPE_2__ {unsigned int wd_timeout; } ;


 int IL_WD_TICK (unsigned int) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

void
il_setup_watchdog(struct il_priv *il)
{
 unsigned int timeout = il->cfg->wd_timeout;

 if (timeout)
  mod_timer(&il->watchdog,
     jiffies + msecs_to_jiffies(IL_WD_TICK(timeout)));
 else
  del_timer(&il->watchdog);
}

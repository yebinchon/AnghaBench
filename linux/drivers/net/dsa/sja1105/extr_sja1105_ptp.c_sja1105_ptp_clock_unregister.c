
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int * clock; int refresh_work; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int ptp_clock_unregister (int *) ;

void sja1105_ptp_clock_unregister(struct sja1105_private *priv)
{
 if (IS_ERR_OR_NULL(priv->clock))
  return;

 cancel_delayed_work_sync(&priv->refresh_work);
 ptp_clock_unregister(priv->clock);
 priv->clock = ((void*)0);
}

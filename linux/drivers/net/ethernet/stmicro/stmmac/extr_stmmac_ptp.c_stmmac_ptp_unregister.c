
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* dev; int * ptp_clock; } ;
struct TYPE_2__ {int name; } ;


 int pr_debug (char*,int ) ;
 int ptp_clock_unregister (int *) ;

void stmmac_ptp_unregister(struct stmmac_priv *priv)
{
 if (priv->ptp_clock) {
  ptp_clock_unregister(priv->ptp_clock);
  priv->ptp_clock = ((void*)0);
  pr_debug("Removed PTP HW clock successfully on %s\n",
    priv->dev->name);
 }
}

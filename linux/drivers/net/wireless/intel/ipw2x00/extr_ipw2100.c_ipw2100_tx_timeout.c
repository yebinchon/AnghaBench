
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_errors; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct ipw2100_priv {TYPE_2__* ieee; } ;
struct TYPE_4__ {scalar_t__ iw_mode; } ;


 int IPW_DEBUG_INFO (char*,int ) ;
 scalar_t__ IW_MODE_MONITOR ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int schedule_reset (struct ipw2100_priv*) ;

__attribute__((used)) static void ipw2100_tx_timeout(struct net_device *dev)
{
 struct ipw2100_priv *priv = libipw_priv(dev);

 dev->stats.tx_errors++;






 IPW_DEBUG_INFO("%s: TX timed out.  Scheduling firmware restart.\n",
         dev->name);
 schedule_reset(priv);
}

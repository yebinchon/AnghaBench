
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ station; } ;
struct frad_local {int * dlci; TYPE_1__ config; struct net_device** master; } ;


 int CONFIG_DLCI_MAX ;
 int ENODEV ;
 scalar_t__ FRAD_STATION_NODE ;
 int SDLA_DEACTIVATE_DLCI ;
 int abs (int ) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sdla_cmd (struct net_device*,int ,int ,int ,int *,int,int *,int *) ;

__attribute__((used)) static int sdla_deactivate(struct net_device *slave, struct net_device *master)
{
 struct frad_local *flp;
 int i;

 flp = netdev_priv(slave);

 for(i=0;i<CONFIG_DLCI_MAX;i++)
  if (flp->master[i] == master)
   break;

 if (i == CONFIG_DLCI_MAX)
  return -ENODEV;

 flp->dlci[i] = -abs(flp->dlci[i]);

 if (netif_running(slave) && (flp->config.station == FRAD_STATION_NODE))
  sdla_cmd(slave, SDLA_DEACTIVATE_DLCI, 0, 0, &flp->dlci[i], sizeof(short), ((void*)0), ((void*)0));

 return 0;
}

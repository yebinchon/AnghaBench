
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ type; scalar_t__ dev_addr; int mtu; } ;
struct TYPE_2__ {scalar_t__ station; } ;
struct frad_local {short* dlci; TYPE_1__ config; struct net_device** master; } ;


 scalar_t__ ARPHRD_DLCI ;
 int CONFIG_DLCI_MAX ;
 int EADDRINUSE ;
 int EINVAL ;
 int EMLINK ;
 scalar_t__ FRAD_STATION_CPE ;
 int SDLA_ADD_DLCI ;
 short abs (short) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sdla_cmd (struct net_device*,int ,int ,int ,scalar_t__,int,int *,int *) ;
 int sdla_reconfig (struct net_device*) ;

__attribute__((used)) static int sdla_assoc(struct net_device *slave, struct net_device *master)
{
 struct frad_local *flp;
 int i;

 if (master->type != ARPHRD_DLCI)
  return -EINVAL;

 flp = netdev_priv(slave);

 for(i=0;i<CONFIG_DLCI_MAX;i++)
 {
  if (!flp->master[i])
   break;
  if (abs(flp->dlci[i]) == *(short *)(master->dev_addr))
   return -EADDRINUSE;
 }

 if (i == CONFIG_DLCI_MAX)
  return -EMLINK;


 flp->master[i] = master;
 flp->dlci[i] = -*(short *)(master->dev_addr);
 master->mtu = slave->mtu;

 if (netif_running(slave)) {
  if (flp->config.station == FRAD_STATION_CPE)
   sdla_reconfig(slave);
  else
   sdla_cmd(slave, SDLA_ADD_DLCI, 0, 0, master->dev_addr, sizeof(short), ((void*)0), ((void*)0));
 }

 return 0;
}

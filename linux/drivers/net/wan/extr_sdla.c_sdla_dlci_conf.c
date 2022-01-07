
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct frad_local {int * dlci; struct net_device** master; } ;
struct dlci_local {int config; } ;
struct dlci_conf {int dummy; } ;


 int CONFIG_DLCI_MAX ;
 int EIO ;
 int ENODEV ;
 int SDLA_READ_DLCI_CONFIGURATION ;
 short SDLA_RET_OK ;
 int SDLA_SET_DLCI_CONFIGURATION ;
 int abs (int ) ;
 void* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 short sdla_cmd (struct net_device*,int ,int ,int ,int *,int,int *,short*) ;

__attribute__((used)) static int sdla_dlci_conf(struct net_device *slave, struct net_device *master, int get)
{
 struct frad_local *flp;
 struct dlci_local *dlp;
 int i;
 short len, ret;

 flp = netdev_priv(slave);

 for(i=0;i<CONFIG_DLCI_MAX;i++)
  if (flp->master[i] == master)
   break;

 if (i == CONFIG_DLCI_MAX)
  return -ENODEV;

 dlp = netdev_priv(master);

 ret = SDLA_RET_OK;
 len = sizeof(struct dlci_conf);
 if (netif_running(slave)) {
  if (get)
   ret = sdla_cmd(slave, SDLA_READ_DLCI_CONFIGURATION, abs(flp->dlci[i]), 0,
               ((void*)0), 0, &dlp->config, &len);
  else
   ret = sdla_cmd(slave, SDLA_SET_DLCI_CONFIGURATION, abs(flp->dlci[i]), 0,
               &dlp->config, sizeof(struct dlci_conf) - 4 * sizeof(short), ((void*)0), ((void*)0));
 }

 return ret == SDLA_RET_OK ? 0 : -EIO;
}

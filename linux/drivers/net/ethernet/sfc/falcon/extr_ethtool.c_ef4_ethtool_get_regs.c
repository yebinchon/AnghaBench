
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int revision; } ;


 int ef4_nic_get_regs (struct ef4_nic*,void*) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ef4_ethtool_get_regs(struct net_device *net_dev,
     struct ethtool_regs *regs, void *buf)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 regs->version = efx->type->revision;
 ef4_nic_get_regs(efx, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ autoneg; } ;
struct port_info {int tx_chan; TYPE_2__* adapter; TYPE_1__ link_cfg; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int pf; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EAGAIN ;
 int EINVAL ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int t4_restart_aneg (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int restart_autoneg(struct net_device *dev)
{
 struct port_info *p = netdev_priv(dev);

 if (!netif_running(dev))
  return -EAGAIN;
 if (p->link_cfg.autoneg != AUTONEG_ENABLE)
  return -EINVAL;
 t4_restart_aneg(p->adapter, p->adapter->pf, p->tx_chan);
 return 0;
}

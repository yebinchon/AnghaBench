
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_config {int pcaps; int requested_fc; } ;
struct port_info {int tx_chan; TYPE_1__* adapter; struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct TYPE_2__ {int mbox; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int EINVAL ;
 int FW_PORT_CAP32_ANEG ;
 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 struct port_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int t4_link_l1cfg (TYPE_1__*,int ,int ,struct link_config*) ;

__attribute__((used)) static int set_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *epause)
{
 struct port_info *p = netdev_priv(dev);
 struct link_config *lc = &p->link_cfg;

 if (epause->autoneg == AUTONEG_DISABLE)
  lc->requested_fc = 0;
 else if (lc->pcaps & FW_PORT_CAP32_ANEG)
  lc->requested_fc = PAUSE_AUTONEG;
 else
  return -EINVAL;

 if (epause->rx_pause)
  lc->requested_fc |= PAUSE_RX;
 if (epause->tx_pause)
  lc->requested_fc |= PAUSE_TX;
 if (netif_running(dev))
  return t4_link_l1cfg(p->adapter, p->adapter->mbox, p->tx_chan,
         lc);
 return 0;
}

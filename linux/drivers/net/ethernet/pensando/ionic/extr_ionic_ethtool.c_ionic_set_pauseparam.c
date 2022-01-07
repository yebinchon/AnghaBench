
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {struct ionic* ionic; } ;
struct TYPE_6__ {TYPE_2__* port_info; } ;
struct ionic {int dev_cmd_lock; TYPE_3__ idev; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;
struct TYPE_4__ {int pause_type; } ;
struct TYPE_5__ {TYPE_1__ config; } ;


 int DEVCMD_TIMEOUT ;
 int EOPNOTSUPP ;
 int IONIC_PAUSE_F_RX ;
 int IONIC_PAUSE_F_TX ;
 int IONIC_PORT_PAUSE_TYPE_LINK ;
 int ionic_dev_cmd_port_pause (TYPE_3__*,int ) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_set_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *pause)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 struct ionic *ionic = lif->ionic;
 u32 requested_pause;
 int err;

 if (pause->autoneg)
  return -EOPNOTSUPP;


 requested_pause = IONIC_PORT_PAUSE_TYPE_LINK;
 if (pause->rx_pause)
  requested_pause |= IONIC_PAUSE_F_RX;
 if (pause->tx_pause)
  requested_pause |= IONIC_PAUSE_F_TX;

 if (requested_pause == lif->ionic->idev.port_info->config.pause_type)
  return 0;

 mutex_lock(&ionic->dev_cmd_lock);
 ionic_dev_cmd_port_pause(&lif->ionic->idev, requested_pause);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 mutex_unlock(&ionic->dev_cmd_lock);
 if (err)
  return err;

 return 0;
}

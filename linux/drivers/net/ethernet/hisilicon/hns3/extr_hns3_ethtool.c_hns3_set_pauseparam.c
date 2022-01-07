
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_pauseparam ) (struct hnae3_handle*,int ,int ,int ) ;} ;


 int EOPNOTSUPP ;
 int drv ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*,int ,int ,int ) ;
 int stub1 (struct hnae3_handle*,int ,int ,int ) ;

__attribute__((used)) static int hns3_set_pauseparam(struct net_device *netdev,
          struct ethtool_pauseparam *param)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 netif_dbg(h, drv, netdev,
    "set pauseparam: autoneg=%u, rx:%u, tx:%u\n",
    param->autoneg, param->rx_pause, param->tx_pause);

 if (h->ae_algo->ops->set_pauseparam)
  return h->ae_algo->ops->set_pauseparam(h, param->autoneg,
             param->rx_pause,
             param->tx_pause);
 return -EOPNOTSUPP;
}

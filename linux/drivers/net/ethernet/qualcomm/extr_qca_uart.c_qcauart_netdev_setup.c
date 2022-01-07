
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int max_mtu; int min_mtu; int priv_flags; int watchdog_timeo; int * netdev_ops; } ;


 int IFF_TX_SKB_SHARING ;
 int QCAFRM_MAX_MTU ;
 int QCAFRM_MIN_MTU ;
 int QCAUART_TX_TIMEOUT ;
 int qcauart_netdev_ops ;

__attribute__((used)) static void qcauart_netdev_setup(struct net_device *dev)
{
 dev->netdev_ops = &qcauart_netdev_ops;
 dev->watchdog_timeo = QCAUART_TX_TIMEOUT;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->tx_queue_len = 100;


 dev->min_mtu = QCAFRM_MIN_MTU;
 dev->max_mtu = QCAFRM_MAX_MTU;
}

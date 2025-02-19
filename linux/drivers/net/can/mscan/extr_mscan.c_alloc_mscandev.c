
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_3__ {int ctrlmode_supported; int do_set_mode; int do_set_bittiming; int * bittiming_const; } ;
struct mscan_priv {TYPE_2__* tx_queue; TYPE_1__ can; int napi; } ;
struct TYPE_4__ {int id; int mask; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_LISTENONLY ;
 int IFF_ECHO ;
 int MSCAN_ECHO_SKB_MAX ;
 int TX_QUEUE_SIZE ;
 struct net_device* alloc_candev (int,int ) ;
 int mscan_bittiming_const ;
 int mscan_do_set_bittiming ;
 int mscan_do_set_mode ;
 int mscan_netdev_ops ;
 int mscan_rx_poll ;
 struct mscan_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;

struct net_device *alloc_mscandev(void)
{
 struct net_device *dev;
 struct mscan_priv *priv;
 int i;

 dev = alloc_candev(sizeof(struct mscan_priv), MSCAN_ECHO_SKB_MAX);
 if (!dev)
  return ((void*)0);
 priv = netdev_priv(dev);

 dev->netdev_ops = &mscan_netdev_ops;

 dev->flags |= IFF_ECHO;

 netif_napi_add(dev, &priv->napi, mscan_rx_poll, 8);

 priv->can.bittiming_const = &mscan_bittiming_const;
 priv->can.do_set_bittiming = mscan_do_set_bittiming;
 priv->can.do_set_mode = mscan_do_set_mode;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
  CAN_CTRLMODE_LISTENONLY;

 for (i = 0; i < TX_QUEUE_SIZE; i++) {
  priv->tx_queue[i].id = i;
  priv->tx_queue[i].mask = 1 << i;
 }

 return dev;
}

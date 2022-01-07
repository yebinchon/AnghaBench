
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct ntb_netdev {int qp; } ;
struct TYPE_2__ {int tx_errors; int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int ntb_netdev_maybe_stop_tx (struct net_device*,int ,int ) ;
 int ntb_transport_tx_enqueue (int ,struct sk_buff*,int ,int ) ;
 int tx_stop ;

__attribute__((used)) static netdev_tx_t ntb_netdev_start_xmit(struct sk_buff *skb,
      struct net_device *ndev)
{
 struct ntb_netdev *dev = netdev_priv(ndev);
 int rc;

 ntb_netdev_maybe_stop_tx(ndev, dev->qp, tx_stop);

 rc = ntb_transport_tx_enqueue(dev->qp, skb, skb->data, skb->len);
 if (rc)
  goto err;


 ntb_netdev_maybe_stop_tx(ndev, dev->qp, tx_stop);

 return NETDEV_TX_OK;

err:
 ndev->stats.tx_dropped++;
 ndev->stats.tx_errors++;
 return NETDEV_TX_BUSY;
}

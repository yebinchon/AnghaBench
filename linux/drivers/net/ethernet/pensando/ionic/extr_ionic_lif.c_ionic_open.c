
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {int state; int nxqs; } ;


 int IONIC_LIF_UP ;
 int ionic_link_status_check_request (struct ionic_lif*) ;
 int ionic_txrx_alloc (struct ionic_lif*) ;
 int ionic_txrx_deinit (struct ionic_lif*) ;
 int ionic_txrx_enable (struct ionic_lif*) ;
 int ionic_txrx_free (struct ionic_lif*) ;
 int ionic_txrx_init (struct ionic_lif*) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int set_bit (int ,int ) ;

int ionic_open(struct net_device *netdev)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 int err;

 netif_carrier_off(netdev);

 err = ionic_txrx_alloc(lif);
 if (err)
  return err;

 err = ionic_txrx_init(lif);
 if (err)
  goto err_txrx_free;

 err = ionic_txrx_enable(lif);
 if (err)
  goto err_txrx_deinit;

 netif_set_real_num_tx_queues(netdev, lif->nxqs);
 netif_set_real_num_rx_queues(netdev, lif->nxqs);

 set_bit(IONIC_LIF_UP, lif->state);

 ionic_link_status_check_request(lif);
 if (netif_carrier_ok(netdev))
  netif_tx_wake_all_queues(netdev);

 return 0;

err_txrx_deinit:
 ionic_txrx_deinit(lif);
err_txrx_free:
 ionic_txrx_free(lif);
 return err;
}

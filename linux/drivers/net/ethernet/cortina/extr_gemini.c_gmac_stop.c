
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int phydev; } ;
struct gemini_ethernet_port {int napi; int rx_coalesce_timer; } ;


 int free_irq (int ,struct net_device*) ;
 int gmac_cleanup_rxq (struct net_device*) ;
 int gmac_cleanup_txqs (struct net_device*) ;
 int gmac_disable_tx_rx (struct net_device*) ;
 int gmac_enable_irq (struct net_device*,int ) ;
 int gmac_stop_dma (struct gemini_ethernet_port*) ;
 int gmac_update_hw_stats (struct net_device*) ;
 int hrtimer_cancel (int *) ;
 int napi_disable (int *) ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int gmac_stop(struct net_device *netdev)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);

 hrtimer_cancel(&port->rx_coalesce_timer);
 netif_tx_stop_all_queues(netdev);
 gmac_disable_tx_rx(netdev);
 gmac_stop_dma(port);
 napi_disable(&port->napi);

 gmac_enable_irq(netdev, 0);
 gmac_cleanup_rxq(netdev);
 gmac_cleanup_txqs(netdev);

 phy_stop(netdev->phydev);
 free_irq(netdev->irq, netdev);

 gmac_update_hw_stats(netdev);
 return 0;
}

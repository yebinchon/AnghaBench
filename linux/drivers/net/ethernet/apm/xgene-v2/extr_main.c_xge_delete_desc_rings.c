
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int rx_ring; int tx_ring; } ;
struct net_device {int dummy; } ;


 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_delete_desc_ring (struct net_device*,int ) ;
 int xge_free_buffers (struct net_device*) ;
 int xge_rx_poll (struct net_device*,int) ;
 int xge_txc_poll (struct net_device*) ;

__attribute__((used)) static void xge_delete_desc_rings(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 xge_txc_poll(ndev);
 xge_delete_desc_ring(ndev, pdata->tx_ring);

 xge_rx_poll(ndev, 64);
 xge_free_buffers(ndev);
 xge_delete_desc_ring(ndev, pdata->rx_ring);
}

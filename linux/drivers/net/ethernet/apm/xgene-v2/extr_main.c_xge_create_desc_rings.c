
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {struct xge_desc_ring* rx_ring; struct xge_desc_ring* tx_ring; } ;
struct xge_desc_ring {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int XGENE_ENET_NUM_DESC ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 struct xge_desc_ring* xge_create_desc_ring (struct net_device*) ;
 int xge_delete_desc_rings (struct net_device*) ;
 int xge_refill_buffers (struct net_device*,int ) ;
 int xge_update_rx_desc_addr (struct xge_pdata*) ;
 int xge_update_tx_desc_addr (struct xge_pdata*) ;

__attribute__((used)) static int xge_create_desc_rings(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct xge_desc_ring *ring;
 int ret;


 ring = xge_create_desc_ring(ndev);
 if (!ring)
  goto err;

 pdata->tx_ring = ring;
 xge_update_tx_desc_addr(pdata);


 ring = xge_create_desc_ring(ndev);
 if (!ring)
  goto err;

 pdata->rx_ring = ring;
 xge_update_rx_desc_addr(pdata);

 ret = xge_refill_buffers(ndev, XGENE_ENET_NUM_DESC);
 if (ret)
  goto err;

 return 0;
err:
 xge_delete_desc_rings(ndev);

 return -ENOMEM;
}

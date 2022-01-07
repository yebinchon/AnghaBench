
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; int netdev; int rx_desc_count; int tx_desc_count; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int rx_ring; int name; int tx_ring; } ;


 int drv ;
 int netdev_alert (int ,char*) ;
 int netif_dbg (struct xlgmac_pdata*,int ,int ,char*,int ) ;
 int xlgmac_free_rings (struct xlgmac_pdata*) ;
 int xlgmac_init_ring (struct xlgmac_pdata*,int ,int ) ;

__attribute__((used)) static int xlgmac_alloc_rings(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;
 int ret;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  netif_dbg(pdata, drv, pdata->netdev, "%s - Tx ring:\n",
     channel->name);

  ret = xlgmac_init_ring(pdata, channel->tx_ring,
           pdata->tx_desc_count);

  if (ret) {
   netdev_alert(pdata->netdev,
         "error initializing Tx ring");
   goto err_init_ring;
  }

  netif_dbg(pdata, drv, pdata->netdev, "%s - Rx ring:\n",
     channel->name);

  ret = xlgmac_init_ring(pdata, channel->rx_ring,
           pdata->rx_desc_count);
  if (ret) {
   netdev_alert(pdata->netdev,
         "error initializing Rx ring\n");
   goto err_init_ring;
  }
 }

 return 0;

err_init_ring:
 xlgmac_free_rings(pdata);

 return ret;
}

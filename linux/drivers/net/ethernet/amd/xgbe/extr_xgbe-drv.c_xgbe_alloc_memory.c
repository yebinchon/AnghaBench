
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_desc_if {int (* alloc_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int rx_buf_size; scalar_t__ new_rx_ring_count; scalar_t__ rx_ring_count; scalar_t__ new_tx_ring_count; scalar_t__ tx_ring_count; scalar_t__ tx_q_count; struct net_device* netdev; struct xgbe_desc_if desc_if; } ;
struct net_device {int mtu; } ;


 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_alloc_channels (struct xgbe_prv_data*) ;
 int xgbe_calc_rx_buf_size (struct net_device*,int ) ;
 int xgbe_free_memory (struct xgbe_prv_data*) ;
 int xgbe_init_timers (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_alloc_memory(struct xgbe_prv_data *pdata)
{
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 struct net_device *netdev = pdata->netdev;
 int ret;

 if (pdata->new_tx_ring_count) {
  pdata->tx_ring_count = pdata->new_tx_ring_count;
  pdata->tx_q_count = pdata->tx_ring_count;
  pdata->new_tx_ring_count = 0;
 }

 if (pdata->new_rx_ring_count) {
  pdata->rx_ring_count = pdata->new_rx_ring_count;
  pdata->new_rx_ring_count = 0;
 }


 pdata->rx_buf_size = xgbe_calc_rx_buf_size(netdev, netdev->mtu);


 ret = xgbe_alloc_channels(pdata);
 if (ret)
  return ret;


 ret = desc_if->alloc_ring_resources(pdata);
 if (ret)
  goto err_channels;


 xgbe_init_timers(pdata);

 return 0;

err_channels:
 xgbe_free_memory(pdata);

 return ret;
}

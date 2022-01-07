
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {scalar_t__ rx_pool_size; int * rx_pool; int ndev_dev; int * rx_fdq; } ;


 int IS_ERR_OR_NULL (int ) ;
 int KNAV_DMA_FDQ_PER_CHAN ;
 int dev_err (int ,char*,scalar_t__) ;
 scalar_t__ knav_pool_count (int *) ;
 int knav_pool_destroy (int *) ;
 int netcp_free_rx_buf (struct netcp_intf*,int) ;

__attribute__((used)) static void netcp_rxpool_free(struct netcp_intf *netcp)
{
 int i;

 for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN &&
      !IS_ERR_OR_NULL(netcp->rx_fdq[i]); i++)
  netcp_free_rx_buf(netcp, i);

 if (knav_pool_count(netcp->rx_pool) != netcp->rx_pool_size)
  dev_err(netcp->ndev_dev, "Lost Rx (%d) descriptors\n",
   netcp->rx_pool_size - knav_pool_count(netcp->rx_pool));

 knav_pool_destroy(netcp->rx_pool);
 netcp->rx_pool = ((void*)0);
}

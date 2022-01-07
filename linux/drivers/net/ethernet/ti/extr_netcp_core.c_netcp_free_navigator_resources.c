
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int * tx_pool; int * tx_compl_q; int ** rx_fdq; int * rx_queue; int * rx_pool; int * rx_channel; } ;


 int IS_ERR_OR_NULL (int *) ;
 int KNAV_DMA_FDQ_PER_CHAN ;
 int knav_dma_close_channel (int *) ;
 int knav_pool_destroy (int *) ;
 int knav_queue_close (int *) ;
 int netcp_rxpool_free (struct netcp_intf*) ;

__attribute__((used)) static void netcp_free_navigator_resources(struct netcp_intf *netcp)
{
 int i;

 if (netcp->rx_channel) {
  knav_dma_close_channel(netcp->rx_channel);
  netcp->rx_channel = ((void*)0);
 }

 if (!IS_ERR_OR_NULL(netcp->rx_pool))
  netcp_rxpool_free(netcp);

 if (!IS_ERR_OR_NULL(netcp->rx_queue)) {
  knav_queue_close(netcp->rx_queue);
  netcp->rx_queue = ((void*)0);
 }

 for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN &&
      !IS_ERR_OR_NULL(netcp->rx_fdq[i]) ; ++i) {
  knav_queue_close(netcp->rx_fdq[i]);
  netcp->rx_fdq[i] = ((void*)0);
 }

 if (!IS_ERR_OR_NULL(netcp->tx_compl_q)) {
  knav_queue_close(netcp->tx_compl_q);
  netcp->tx_compl_q = ((void*)0);
 }

 if (!IS_ERR_OR_NULL(netcp->tx_pool)) {
  knav_pool_destroy(netcp->tx_pool);
  netcp->tx_pool = ((void*)0);
 }
}

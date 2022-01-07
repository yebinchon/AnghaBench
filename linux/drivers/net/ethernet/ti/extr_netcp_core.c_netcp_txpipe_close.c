
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_tx_pipe {int * dma_channel; } ;


 int knav_dma_close_channel (int *) ;

int netcp_txpipe_close(struct netcp_tx_pipe *tx_pipe)
{
 if (tx_pipe->dma_channel) {
  knav_dma_close_channel(tx_pipe->dma_channel);
  tx_pipe->dma_channel = ((void*)0);
 }
 return 0;
}

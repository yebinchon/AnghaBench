
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_tx_pipe {char const* dma_chan_name; unsigned int dma_queue_id; struct netcp_device* netcp_device; } ;
struct netcp_device {int dummy; } ;


 int memset (struct netcp_tx_pipe*,int ,int) ;

int netcp_txpipe_init(struct netcp_tx_pipe *tx_pipe,
        struct netcp_device *netcp_device,
        const char *dma_chan_name, unsigned int dma_queue_id)
{
 memset(tx_pipe, 0, sizeof(*tx_pipe));
 tx_pipe->netcp_device = netcp_device;
 tx_pipe->dma_chan_name = dma_chan_name;
 tx_pipe->dma_queue_id = dma_queue_id;
 return 0;
}

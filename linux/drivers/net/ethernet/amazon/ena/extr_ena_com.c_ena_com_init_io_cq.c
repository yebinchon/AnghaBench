
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_eth_io_tx_cdesc {int dummy; } ;
struct ena_eth_io_rx_cdesc_base {int dummy; } ;
struct TYPE_2__ {void* virt_addr; int phys_addr; } ;
struct ena_com_io_cq {int cdesc_entry_size_in_bytes; scalar_t__ direction; size_t q_depth; int phase; scalar_t__ head; TYPE_1__ cdesc_addr; } ;
struct ena_com_dev {int dmadev; } ;
struct ena_com_create_io_ctx {int numa_node; } ;


 scalar_t__ ENA_COM_IO_QUEUE_DIRECTION_TX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_to_node (int ) ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int pr_err (char*) ;
 int set_dev_node (int ,int) ;

__attribute__((used)) static int ena_com_init_io_cq(struct ena_com_dev *ena_dev,
         struct ena_com_create_io_ctx *ctx,
         struct ena_com_io_cq *io_cq)
{
 size_t size;
 int prev_node = 0;

 memset(&io_cq->cdesc_addr, 0x0, sizeof(io_cq->cdesc_addr));


 io_cq->cdesc_entry_size_in_bytes =
  (io_cq->direction == ENA_COM_IO_QUEUE_DIRECTION_TX) ?
  sizeof(struct ena_eth_io_tx_cdesc) :
  sizeof(struct ena_eth_io_rx_cdesc_base);

 size = io_cq->cdesc_entry_size_in_bytes * io_cq->q_depth;

 prev_node = dev_to_node(ena_dev->dmadev);
 set_dev_node(ena_dev->dmadev, ctx->numa_node);
 io_cq->cdesc_addr.virt_addr =
  dma_alloc_coherent(ena_dev->dmadev, size,
       &io_cq->cdesc_addr.phys_addr, GFP_KERNEL);
 set_dev_node(ena_dev->dmadev, prev_node);
 if (!io_cq->cdesc_addr.virt_addr) {
  io_cq->cdesc_addr.virt_addr =
   dma_alloc_coherent(ena_dev->dmadev, size,
        &io_cq->cdesc_addr.phys_addr,
        GFP_KERNEL);
 }

 if (!io_cq->cdesc_addr.virt_addr) {
  pr_err("memory allocation failed\n");
  return -ENOMEM;
 }

 io_cq->phase = 1;
 io_cq->head = 0;

 return 0;
}

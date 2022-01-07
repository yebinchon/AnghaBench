
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ena_ring {int ena_com_io_cq; int ena_com_io_sq; int cpu; int ring_size; } ;
struct ena_com_dev {int tx_mem_queue_type; } ;
struct ena_com_create_io_ctx {int numa_node; int queue_size; int msix_vector; int mem_queue_type; int qid; int direction; } ;
struct ena_adapter {int netdev; struct ena_ring* tx_ring; struct ena_com_dev* ena_dev; } ;
typedef int ctx ;


 int ENA_COM_IO_QUEUE_DIRECTION_TX ;
 int ENA_IO_IRQ_IDX (int) ;
 int ENA_IO_TXQ_IDX (int) ;
 int cpu_to_node (int ) ;
 int ena_com_create_io_queue (struct ena_com_dev*,struct ena_com_create_io_ctx*) ;
 int ena_com_destroy_io_queue (struct ena_com_dev*,int ) ;
 int ena_com_get_io_handlers (struct ena_com_dev*,int ,int *,int *) ;
 int ena_com_update_numa_node (int ,int ) ;
 int ifup ;
 int memset (struct ena_com_create_io_ctx*,int,int) ;
 int netif_err (struct ena_adapter*,int ,int ,char*,int,int) ;

__attribute__((used)) static int ena_create_io_tx_queue(struct ena_adapter *adapter, int qid)
{
 struct ena_com_create_io_ctx ctx;
 struct ena_com_dev *ena_dev;
 struct ena_ring *tx_ring;
 u32 msix_vector;
 u16 ena_qid;
 int rc;

 ena_dev = adapter->ena_dev;

 tx_ring = &adapter->tx_ring[qid];
 msix_vector = ENA_IO_IRQ_IDX(qid);
 ena_qid = ENA_IO_TXQ_IDX(qid);

 memset(&ctx, 0x0, sizeof(ctx));

 ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_TX;
 ctx.qid = ena_qid;
 ctx.mem_queue_type = ena_dev->tx_mem_queue_type;
 ctx.msix_vector = msix_vector;
 ctx.queue_size = tx_ring->ring_size;
 ctx.numa_node = cpu_to_node(tx_ring->cpu);

 rc = ena_com_create_io_queue(ena_dev, &ctx);
 if (rc) {
  netif_err(adapter, ifup, adapter->netdev,
     "Failed to create I/O TX queue num %d rc: %d\n",
     qid, rc);
  return rc;
 }

 rc = ena_com_get_io_handlers(ena_dev, ena_qid,
         &tx_ring->ena_com_io_sq,
         &tx_ring->ena_com_io_cq);
 if (rc) {
  netif_err(adapter, ifup, adapter->netdev,
     "Failed to get TX queue handlers. TX queue num %d rc: %d\n",
     qid, rc);
  ena_com_destroy_io_queue(ena_dev, ena_qid);
  return rc;
 }

 ena_com_update_numa_node(tx_ring->ena_com_io_cq, ctx.numa_node);
 return rc;
}

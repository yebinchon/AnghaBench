
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mvpp2_txq_pcpu {int dummy; } ;
struct mvpp2_tx_queue {struct mvpp2_tx_desc* descs; int id; int pcpu; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {TYPE_2__* dev; int priv; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MVPP2_TXD_L_DESC ;
 int dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 unsigned int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_txdesc_cmd_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_dma_addr_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_size_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_txq_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txq_desc_put (struct mvpp2_tx_queue*) ;
 int mvpp2_txq_inc_put (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ;
 struct mvpp2_tx_desc* mvpp2_txq_next_desc_get (struct mvpp2_tx_queue*) ;
 struct mvpp2_txq_pcpu* per_cpu_ptr (int ,unsigned int) ;
 void* skb_frag_address (int *) ;
 int skb_frag_size (int *) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int smp_processor_id () ;
 int tx_desc_unmap_put (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_tx_desc*) ;

__attribute__((used)) static int mvpp2_tx_frag_process(struct mvpp2_port *port, struct sk_buff *skb,
     struct mvpp2_tx_queue *aggr_txq,
     struct mvpp2_tx_queue *txq)
{
 unsigned int thread = mvpp2_cpu_to_thread(port->priv, smp_processor_id());
 struct mvpp2_txq_pcpu *txq_pcpu = per_cpu_ptr(txq->pcpu, thread);
 struct mvpp2_tx_desc *tx_desc;
 int i;
 dma_addr_t buf_dma_addr;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  void *addr = skb_frag_address(frag);

  tx_desc = mvpp2_txq_next_desc_get(aggr_txq);
  mvpp2_txdesc_txq_set(port, tx_desc, txq->id);
  mvpp2_txdesc_size_set(port, tx_desc, skb_frag_size(frag));

  buf_dma_addr = dma_map_single(port->dev->dev.parent, addr,
           skb_frag_size(frag),
           DMA_TO_DEVICE);
  if (dma_mapping_error(port->dev->dev.parent, buf_dma_addr)) {
   mvpp2_txq_desc_put(txq);
   goto cleanup;
  }

  mvpp2_txdesc_dma_addr_set(port, tx_desc, buf_dma_addr);

  if (i == (skb_shinfo(skb)->nr_frags - 1)) {

   mvpp2_txdesc_cmd_set(port, tx_desc,
          MVPP2_TXD_L_DESC);
   mvpp2_txq_inc_put(port, txq_pcpu, skb, tx_desc);
  } else {

   mvpp2_txdesc_cmd_set(port, tx_desc, 0);
   mvpp2_txq_inc_put(port, txq_pcpu, ((void*)0), tx_desc);
  }
 }

 return 0;
cleanup:



 for (i = i - 1; i >= 0; i--) {
  tx_desc = txq->descs + i;
  tx_desc_unmap_put(port, txq, tx_desc);
 }

 return -ENOMEM;
}

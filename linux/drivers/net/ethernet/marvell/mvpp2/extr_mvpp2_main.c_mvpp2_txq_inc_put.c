
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mvpp2_txq_pcpu_buf {scalar_t__ dma; int size; struct sk_buff* skb; } ;
struct mvpp2_txq_pcpu {int txq_put_index; scalar_t__ size; struct mvpp2_txq_pcpu_buf* buffs; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;


 scalar_t__ mvpp2_txdesc_dma_addr_get (struct mvpp2_port*,struct mvpp2_tx_desc*) ;
 scalar_t__ mvpp2_txdesc_offset_get (struct mvpp2_port*,struct mvpp2_tx_desc*) ;
 int mvpp2_txdesc_size_get (struct mvpp2_port*,struct mvpp2_tx_desc*) ;

__attribute__((used)) static void mvpp2_txq_inc_put(struct mvpp2_port *port,
         struct mvpp2_txq_pcpu *txq_pcpu,
         struct sk_buff *skb,
         struct mvpp2_tx_desc *tx_desc)
{
 struct mvpp2_txq_pcpu_buf *tx_buf =
  txq_pcpu->buffs + txq_pcpu->txq_put_index;
 tx_buf->skb = skb;
 tx_buf->size = mvpp2_txdesc_size_get(port, tx_desc);
 tx_buf->dma = mvpp2_txdesc_dma_addr_get(port, tx_desc) +
  mvpp2_txdesc_offset_get(port, tx_desc);
 txq_pcpu->txq_put_index++;
 if (txq_pcpu->txq_put_index == txq_pcpu->size)
  txq_pcpu->txq_put_index = 0;
}

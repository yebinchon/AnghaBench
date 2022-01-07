
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int next2fill; } ;
struct TYPE_3__ {scalar_t__ base; } ;
struct vmxnet3_tx_queue {int txdata_desc_size; TYPE_2__ tx_ring; TYPE_1__ data_ring; } ;
struct vmxnet3_tx_ctx {int copy_size; } ;
struct vmxnet3_adapter {int netdev; } ;
struct sk_buff {int data; } ;
struct Vmxnet3_TxDataDesc {int data; } ;


 int memcpy (int ,int ,int ) ;
 int netdev_dbg (int ,char*,int ,int) ;

__attribute__((used)) static void
vmxnet3_copy_hdr(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
   struct vmxnet3_tx_ctx *ctx,
   struct vmxnet3_adapter *adapter)
{
 struct Vmxnet3_TxDataDesc *tdd;

 tdd = (struct Vmxnet3_TxDataDesc *)((u8 *)tq->data_ring.base +
         tq->tx_ring.next2fill *
         tq->txdata_desc_size);

 memcpy(tdd->data, skb->data, ctx->copy_size);
 netdev_dbg(adapter->netdev,
  "copy %u bytes to dataRing[%u]\n",
  ctx->copy_size, tq->tx_ring.next2fill);
}

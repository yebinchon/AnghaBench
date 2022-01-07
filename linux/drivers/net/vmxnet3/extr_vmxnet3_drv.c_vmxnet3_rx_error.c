
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drop_total; int drop_fcs; int drop_err; } ;
struct vmxnet3_rx_queue {TYPE_1__ stats; } ;
struct vmxnet3_rx_ctx {int * skb; } ;
struct vmxnet3_adapter {int dummy; } ;
struct Vmxnet3_RxCompDesc {int fcs; } ;


 int dev_kfree_skb_irq (int *) ;

__attribute__((used)) static void
vmxnet3_rx_error(struct vmxnet3_rx_queue *rq, struct Vmxnet3_RxCompDesc *rcd,
   struct vmxnet3_rx_ctx *ctx, struct vmxnet3_adapter *adapter)
{
 rq->stats.drop_err++;
 if (!rcd->fcs)
  rq->stats.drop_fcs++;

 rq->stats.drop_total++;
 if (ctx->skb)
  dev_kfree_skb_irq(ctx->skb);

 ctx->skb = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct TYPE_3__ {int len; } ;
struct TYPE_4__ {int complete; } ;
struct at86rf230_state_change {int* buf; TYPE_1__ trx; TYPE_2__ msg; struct at86rf230_local* lp; } ;
struct at86rf230_local {int is_tx; int spi; struct sk_buff* tx_skb; } ;


 int CMD_FB ;
 int CMD_WRITE ;
 int at86rf230_async_error (struct at86rf230_local*,struct at86rf230_state_change*,int) ;
 int at86rf230_write_frame_complete ;
 int memcpy (int*,int ,int) ;
 int spi_async (int ,TYPE_2__*) ;

__attribute__((used)) static void
at86rf230_write_frame(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 struct sk_buff *skb = lp->tx_skb;
 u8 *buf = ctx->buf;
 int rc;

 lp->is_tx = 1;

 buf[0] = CMD_FB | CMD_WRITE;
 buf[1] = skb->len + 2;
 memcpy(buf + 2, skb->data, skb->len);
 ctx->trx.len = skb->len + 2;
 ctx->msg.complete = at86rf230_write_frame_complete;
 rc = spi_async(lp->spi, &ctx->msg);
 if (rc) {
  ctx->trx.len = 2;
  at86rf230_async_error(lp, ctx, rc);
 }
}

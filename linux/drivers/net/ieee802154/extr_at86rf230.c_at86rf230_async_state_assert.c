
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct at86rf230_state_change {scalar_t__* buf; scalar_t__ const to_state; int (* complete ) (void*) ;int from_state; struct at86rf230_local* lp; } ;
struct at86rf230_local {scalar_t__ tx_retry; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AT86RF2XX_MAX_TX_RETRIES ;
 scalar_t__ const STATE_BUSY_RX_AACK ;
 scalar_t__ STATE_FORCE_TRX_OFF ;
 scalar_t__ STATE_RX_AACK_ON ;
 scalar_t__ STATE_TRX_OFF ;
 scalar_t__ STATE_TX_ON ;
 scalar_t__ const TRX_STATE_MASK ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,scalar_t__,int (*) (void*)) ;
 int dev_warn (int *,char*,int ,scalar_t__,scalar_t__ const) ;
 int stub1 (void*) ;

__attribute__((used)) static void
at86rf230_async_state_assert(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 const u8 *buf = ctx->buf;
 const u8 trx_state = buf[1] & TRX_STATE_MASK;


 if (trx_state != ctx->to_state) {



  if (trx_state == STATE_BUSY_RX_AACK) {






   if (ctx->to_state == STATE_RX_AACK_ON)
    goto done;
   if (ctx->to_state == STATE_TX_ON ||
       ctx->to_state == STATE_TRX_OFF) {
    u8 state = ctx->to_state;

    if (lp->tx_retry >= AT86RF2XX_MAX_TX_RETRIES)
     state = STATE_FORCE_TRX_OFF;
    lp->tx_retry++;

    at86rf230_async_state_change(lp, ctx, state,
            ctx->complete);
    return;
   }
  }

  dev_warn(&lp->spi->dev, "unexcept state change from 0x%02x to 0x%02x. Actual state: 0x%02x\n",
    ctx->from_state, ctx->to_state, trx_state);
 }

done:
 if (ctx->complete)
  ctx->complete(context);
}

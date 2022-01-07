
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct at86rf230_state_change {scalar_t__ const to_state; scalar_t__ from_state; int (* complete ) (void*) ;scalar_t__* buf; struct at86rf230_local* lp; } ;
struct at86rf230_local {int dummy; } ;


 int RG_TRX_STATE ;
 int RG_TRX_STATUS ;
 scalar_t__ const STATE_TRANSITION_IN_PROGRESS ;
 scalar_t__ TRX_STATE_MASK ;
 int at86rf230_async_read_reg (struct at86rf230_local*,int ,struct at86rf230_state_change*,void (*) (void*)) ;
 int at86rf230_async_state_delay ;
 int at86rf230_async_write_reg (struct at86rf230_local*,int ,scalar_t__ const,struct at86rf230_state_change*,int ) ;
 int stub1 (void*) ;
 int udelay (int) ;

__attribute__((used)) static void
at86rf230_async_state_change_start(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 u8 *buf = ctx->buf;
 const u8 trx_state = buf[1] & TRX_STATE_MASK;


 if (trx_state == STATE_TRANSITION_IN_PROGRESS) {
  udelay(1);
  at86rf230_async_read_reg(lp, RG_TRX_STATUS, ctx,
      at86rf230_async_state_change_start);
  return;
 }


 if (trx_state == ctx->to_state) {
  if (ctx->complete)
   ctx->complete(context);
  return;
 }


 ctx->from_state = trx_state;




 at86rf230_async_write_reg(lp, RG_TRX_STATE, ctx->to_state, ctx,
      at86rf230_async_state_delay);
}

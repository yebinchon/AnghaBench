
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {int complete; } ;
struct at86rf230_state_change {int* buf; TYPE_2__ trx; TYPE_3__ msg; struct at86rf230_local* lp; } ;
struct TYPE_4__ {int invalid; int success_wait_for_ack; int success; } ;
struct at86rf230_local {int spi; TYPE_1__ trac; } ;


 int AT86RF2XX_MAX_BUF ;
 int CMD_FB ;
 int CONFIG_IEEE802154_AT86RF230_DEBUGFS ;
 scalar_t__ IS_ENABLED (int ) ;

 int TRAC_MASK (int) ;


 int WARN_ONCE (int,char*,int) ;
 int at86rf230_async_error (struct at86rf230_local*,struct at86rf230_state_change*,int) ;
 int at86rf230_rx_read_frame_complete ;
 int spi_async (int ,TYPE_3__*) ;

__attribute__((used)) static void
at86rf230_rx_trac_check(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 u8 *buf = ctx->buf;
 int rc;

 if (IS_ENABLED(CONFIG_IEEE802154_AT86RF230_DEBUGFS)) {
  u8 trac = TRAC_MASK(buf[1]);

  switch (trac) {
  case 129:
   lp->trac.success++;
   break;
  case 128:
   lp->trac.success_wait_for_ack++;
   break;
  case 130:
   lp->trac.invalid++;
   break;
  default:
   WARN_ONCE(1, "received rx trac status %d\n", trac);
   break;
  }
 }

 buf[0] = CMD_FB;
 ctx->trx.len = AT86RF2XX_MAX_BUF;
 ctx->msg.complete = at86rf230_rx_read_frame_complete;
 rc = spi_async(lp->spi, &ctx->msg);
 if (rc) {
  ctx->trx.len = 2;
  at86rf230_async_error(lp, ctx, rc);
 }
}

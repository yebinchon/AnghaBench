
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct at86rf230_state_change {int * buf; struct at86rf230_local* lp; } ;
struct TYPE_2__ {int invalid; int no_ack; int channel_access_failure; int success_data_pending; int success; } ;
struct at86rf230_local {TYPE_1__ trac; } ;


 int CONFIG_IEEE802154_AT86RF230_DEBUGFS ;
 scalar_t__ IS_ENABLED (int ) ;
 int STATE_TX_ON ;


 int TRAC_MASK (int ) ;



 int WARN_ONCE (int,char*,int) ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int ) ;
 int at86rf230_tx_on ;

__attribute__((used)) static void
at86rf230_tx_trac_check(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 if (IS_ENABLED(CONFIG_IEEE802154_AT86RF230_DEBUGFS)) {
  u8 trac = TRAC_MASK(ctx->buf[1]);

  switch (trac) {
  case 129:
   lp->trac.success++;
   break;
  case 128:
   lp->trac.success_data_pending++;
   break;
  case 132:
   lp->trac.channel_access_failure++;
   break;
  case 130:
   lp->trac.no_ack++;
   break;
  case 131:
   lp->trac.invalid++;
   break;
  default:
   WARN_ONCE(1, "received tx trac status %d\n", trac);
   break;
  }
 }

 at86rf230_async_state_change(lp, ctx, STATE_TX_ON, at86rf230_tx_on);
}

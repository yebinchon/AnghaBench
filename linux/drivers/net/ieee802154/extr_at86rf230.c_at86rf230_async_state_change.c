
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct at86rf230_state_change {void (* complete ) (void*) ;int to_state; } ;
struct at86rf230_local {int dummy; } ;


 int RG_TRX_STATUS ;
 int at86rf230_async_read_reg (struct at86rf230_local*,int ,struct at86rf230_state_change*,int ) ;
 int at86rf230_async_state_change_start ;

__attribute__((used)) static void
at86rf230_async_state_change(struct at86rf230_local *lp,
        struct at86rf230_state_change *ctx,
        const u8 state, void (*complete)(void *context))
{

 ctx->to_state = state;
 ctx->complete = complete;
 at86rf230_async_read_reg(lp, RG_TRX_STATUS, ctx,
     at86rf230_async_state_change_start);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdc_ncm_ctx {int timer_interval; int tx_timer; int stop; } ;


 int HRTIMER_MODE_REL ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static void cdc_ncm_tx_timeout_start(struct cdc_ncm_ctx *ctx)
{

 if (!(hrtimer_active(&ctx->tx_timer) || atomic_read(&ctx->stop)))
  hrtimer_start(&ctx->tx_timer,
    ctx->timer_interval,
    HRTIMER_MODE_REL);
}

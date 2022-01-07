
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int function; } ;
struct TYPE_7__ {struct at86rf230_state_change* context; } ;
struct TYPE_8__ {int len; int rx_buf; int tx_buf; } ;
struct at86rf230_state_change {TYPE_5__ timer; TYPE_2__ msg; TYPE_3__ trx; int buf; int irq; struct at86rf230_local* lp; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_6__ {int irq; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int at86rf230_async_state_timer ;
 int hrtimer_init (TYPE_5__*,int ,int ) ;
 int spi_message_add_tail (TYPE_3__*,TYPE_2__*) ;
 int spi_message_init (TYPE_2__*) ;

__attribute__((used)) static void
at86rf230_setup_spi_messages(struct at86rf230_local *lp,
        struct at86rf230_state_change *state)
{
 state->lp = lp;
 state->irq = lp->spi->irq;
 spi_message_init(&state->msg);
 state->msg.context = state;
 state->trx.len = 2;
 state->trx.tx_buf = state->buf;
 state->trx.rx_buf = state->buf;
 spi_message_add_tail(&state->trx, &state->msg);
 hrtimer_init(&state->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 state->timer.function = at86rf230_async_state_timer;
}

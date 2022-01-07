
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int complete; struct mrf24j40* context; } ;
struct TYPE_5__ {int len; int rx_buf; int tx_buf; } ;
struct mrf24j40 {TYPE_1__ irq_msg; TYPE_2__ irq_trx; int irq_buf; } ;


 int mrf24j40_intstat_complete ;
 int spi_message_add_tail (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init (TYPE_1__*) ;

__attribute__((used)) static void
mrf24j40_setup_irq_spi_messages(struct mrf24j40 *devrec)
{
 spi_message_init(&devrec->irq_msg);
 devrec->irq_msg.context = devrec;
 devrec->irq_msg.complete = mrf24j40_intstat_complete;
 devrec->irq_trx.len = 2;
 devrec->irq_trx.tx_buf = devrec->irq_buf;
 devrec->irq_trx.rx_buf = devrec->irq_buf;
 spi_message_add_tail(&devrec->irq_trx, &devrec->irq_msg);
}

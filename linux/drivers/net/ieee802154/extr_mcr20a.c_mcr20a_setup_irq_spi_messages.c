
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int complete; struct mcr20a_local* context; } ;
struct TYPE_5__ {int len; int rx_buf; int tx_buf; } ;
struct mcr20a_local {TYPE_1__ irq_msg; TYPE_2__ irq_xfer_data; TYPE_2__ irq_xfer_header; int irq_data; int irq_header; } ;


 int MCR20A_IRQSTS_NUM ;
 int mcr20a_irq_status_complete ;
 int spi_message_add_tail (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init (TYPE_1__*) ;

__attribute__((used)) static void
mcr20a_setup_irq_spi_messages(struct mcr20a_local *lp)
{
 spi_message_init(&lp->irq_msg);
 lp->irq_msg.context = lp;
 lp->irq_msg.complete = mcr20a_irq_status_complete;
 lp->irq_xfer_header.len = 1;
 lp->irq_xfer_header.tx_buf = lp->irq_header;
 lp->irq_xfer_header.rx_buf = lp->irq_header;

 lp->irq_xfer_data.len = MCR20A_IRQSTS_NUM;
 lp->irq_xfer_data.rx_buf = lp->irq_data;

 spi_message_add_tail(&lp->irq_xfer_header, &lp->irq_msg);
 spi_message_add_tail(&lp->irq_xfer_data, &lp->irq_msg);
}

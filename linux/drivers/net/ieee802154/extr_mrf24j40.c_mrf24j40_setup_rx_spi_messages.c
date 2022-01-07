
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int complete; struct mrf24j40* context; } ;
struct TYPE_5__ {int len; int rx_buf; int tx_buf; } ;
struct mrf24j40 {TYPE_1__ rx_buf_msg; TYPE_2__ rx_lqi_trx; int rx_lqi_buf; TYPE_2__ rx_fifo_buf_trx; int rx_fifo_buf; TYPE_2__ rx_addr_trx; int rx_addr_buf; TYPE_1__ rx_msg; TYPE_2__ rx_trx; int rx_buf; } ;


 int mrf24j40_handle_rx_read_buf_complete ;
 int spi_message_add_tail (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init (TYPE_1__*) ;

__attribute__((used)) static void
mrf24j40_setup_rx_spi_messages(struct mrf24j40 *devrec)
{
 spi_message_init(&devrec->rx_msg);
 devrec->rx_msg.context = devrec;
 devrec->rx_trx.len = 2;
 devrec->rx_trx.tx_buf = devrec->rx_buf;
 devrec->rx_trx.rx_buf = devrec->rx_buf;
 spi_message_add_tail(&devrec->rx_trx, &devrec->rx_msg);

 spi_message_init(&devrec->rx_buf_msg);
 devrec->rx_buf_msg.context = devrec;
 devrec->rx_buf_msg.complete = mrf24j40_handle_rx_read_buf_complete;
 devrec->rx_addr_trx.len = 2;
 devrec->rx_addr_trx.tx_buf = devrec->rx_addr_buf;
 spi_message_add_tail(&devrec->rx_addr_trx, &devrec->rx_buf_msg);
 devrec->rx_fifo_buf_trx.rx_buf = devrec->rx_fifo_buf;
 spi_message_add_tail(&devrec->rx_fifo_buf_trx, &devrec->rx_buf_msg);
 devrec->rx_lqi_trx.len = 2;
 devrec->rx_lqi_trx.rx_buf = devrec->rx_lqi_buf;
 spi_message_add_tail(&devrec->rx_lqi_trx, &devrec->rx_buf_msg);
}

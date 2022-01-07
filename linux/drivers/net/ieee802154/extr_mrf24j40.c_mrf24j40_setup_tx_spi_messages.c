
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct mrf24j40* context; int complete; } ;
struct TYPE_5__ {int len; int tx_buf; } ;
struct mrf24j40 {TYPE_1__ tx_post_msg; TYPE_2__ tx_post_trx; int tx_post_buf; TYPE_1__ tx_msg; TYPE_2__ tx_buf_trx; TYPE_2__ tx_len_trx; int tx_len_buf; TYPE_2__ tx_hdr_trx; int tx_hdr_buf; } ;


 int spi_message_add_tail (TYPE_2__*,TYPE_1__*) ;
 int spi_message_init (TYPE_1__*) ;
 int write_tx_buf_complete ;

__attribute__((used)) static void
mrf24j40_setup_tx_spi_messages(struct mrf24j40 *devrec)
{
 spi_message_init(&devrec->tx_msg);
 devrec->tx_msg.context = devrec;
 devrec->tx_msg.complete = write_tx_buf_complete;
 devrec->tx_hdr_trx.len = 2;
 devrec->tx_hdr_trx.tx_buf = devrec->tx_hdr_buf;
 spi_message_add_tail(&devrec->tx_hdr_trx, &devrec->tx_msg);
 devrec->tx_len_trx.len = 2;
 devrec->tx_len_trx.tx_buf = devrec->tx_len_buf;
 spi_message_add_tail(&devrec->tx_len_trx, &devrec->tx_msg);
 spi_message_add_tail(&devrec->tx_buf_trx, &devrec->tx_msg);

 spi_message_init(&devrec->tx_post_msg);
 devrec->tx_post_msg.context = devrec;
 devrec->tx_post_trx.len = 2;
 devrec->tx_post_trx.tx_buf = devrec->tx_post_buf;
 spi_message_add_tail(&devrec->tx_post_trx, &devrec->tx_post_msg);
}

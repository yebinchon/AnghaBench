
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int len; } ;
struct mrf24j40 {int* rx_addr_buf; int rx_buf_msg; int spi; int * rx_buf; TYPE_1__ rx_fifo_buf_trx; } ;


 int IEEE802154_MTU ;
 int MRF24J40_READLONG (scalar_t__) ;
 scalar_t__ REG_RX_FIFO ;
 int dev_err (int ,char*) ;
 int ieee802154_is_valid_psdu_len (int ) ;
 int mrf24j40_handle_rx_read_buf_unlock (struct mrf24j40*) ;
 int printdev (struct mrf24j40*) ;
 int spi_async (int ,int *) ;

__attribute__((used)) static void mrf24j40_handle_rx_read_buf(void *context)
{
 struct mrf24j40 *devrec = context;
 u16 cmd;
 int ret;


 if (!ieee802154_is_valid_psdu_len(devrec->rx_buf[2]))
  devrec->rx_buf[2] = IEEE802154_MTU;

 cmd = MRF24J40_READLONG(REG_RX_FIFO + 1);
 devrec->rx_addr_buf[0] = cmd >> 8 & 0xff;
 devrec->rx_addr_buf[1] = cmd & 0xff;
 devrec->rx_fifo_buf_trx.len = devrec->rx_buf[2];
 ret = spi_async(devrec->spi, &devrec->rx_buf_msg);
 if (ret) {
  dev_err(printdev(devrec), "failed to read rx buffer\n");
  mrf24j40_handle_rx_read_buf_unlock(devrec);
 }
}

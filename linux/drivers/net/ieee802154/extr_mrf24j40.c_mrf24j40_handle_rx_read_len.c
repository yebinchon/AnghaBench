
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int complete; } ;
struct TYPE_3__ {int len; } ;
struct mrf24j40 {int* rx_buf; TYPE_2__ rx_msg; int spi; TYPE_1__ rx_trx; } ;


 int MRF24J40_READLONG (int ) ;
 int REG_RX_FIFO ;
 int dev_err (int ,char*) ;
 int mrf24j40_handle_rx_read_buf ;
 int mrf24j40_handle_rx_read_buf_unlock (struct mrf24j40*) ;
 int printdev (struct mrf24j40*) ;
 int spi_async (int ,TYPE_2__*) ;

__attribute__((used)) static void mrf24j40_handle_rx_read_len(void *context)
{
 struct mrf24j40 *devrec = context;
 u16 cmd;
 int ret;


 devrec->rx_msg.complete = mrf24j40_handle_rx_read_buf;
 devrec->rx_trx.len = 3;
 cmd = MRF24J40_READLONG(REG_RX_FIFO);
 devrec->rx_buf[0] = cmd >> 8 & 0xff;
 devrec->rx_buf[1] = cmd & 0xff;

 ret = spi_async(devrec->spi, &devrec->rx_msg);
 if (ret) {
  dev_err(printdev(devrec), "failed to read rx buffer length\n");
  mrf24j40_handle_rx_read_buf_unlock(devrec);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {size_t len; int const* tx_buf; } ;
struct mrf24j40 {int* tx_hdr_buf; int* tx_len_buf; int tx_msg; int spi; TYPE_1__ tx_buf_trx; } ;


 int MRF24J40_WRITELONG (int) ;
 int TX_FIFO_SIZE ;
 int dev_err (int ,char*) ;
 int printdev (struct mrf24j40*) ;
 int spi_async (int ,int *) ;

__attribute__((used)) static int write_tx_buf(struct mrf24j40 *devrec, u16 reg,
   const u8 *data, size_t length)
{
 u16 cmd;
 int ret;


 if (length > TX_FIFO_SIZE-2) {
  dev_err(printdev(devrec), "write_tx_buf() was passed too large a buffer. Performing short write.\n");
  length = TX_FIFO_SIZE-2;
 }

 cmd = MRF24J40_WRITELONG(reg);
 devrec->tx_hdr_buf[0] = cmd >> 8 & 0xff;
 devrec->tx_hdr_buf[1] = cmd & 0xff;
 devrec->tx_len_buf[0] = 0x0;
 devrec->tx_len_buf[1] = length;
 devrec->tx_buf_trx.tx_buf = data;
 devrec->tx_buf_trx.len = length;

 ret = spi_async(devrec->spi, &devrec->tx_msg);
 if (ret)
  dev_err(printdev(devrec), "SPI write Failed for TX buf\n");

 return ret;
}

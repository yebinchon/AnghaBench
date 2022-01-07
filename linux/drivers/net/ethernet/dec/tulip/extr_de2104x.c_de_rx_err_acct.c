
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct de_private {TYPE_2__* dev; } ;
struct TYPE_4__ {int rx_fifo_errors; int rx_crc_errors; int rx_length_errors; int rx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int RxErrCRC ;
 int RxErrFIFO ;
 int RxError ;
 int netif_dbg (struct de_private*,int ,TYPE_2__*,char*,unsigned int,int,int) ;
 int netif_warn (struct de_private*,int ,TYPE_2__*,char*,int) ;
 int rx_err ;

__attribute__((used)) static void de_rx_err_acct (struct de_private *de, unsigned rx_tail,
       u32 status, u32 len)
{
 netif_dbg(de, rx_err, de->dev,
    "rx err, slot %d status 0x%x len %d\n",
    rx_tail, status, len);

 if ((status & 0x38000300) != 0x0300) {

  if ((status & 0xffff) != 0x7fff) {
   netif_warn(de, rx_err, de->dev,
       "Oversized Ethernet frame spanned multiple buffers, status %08x!\n",
       status);
   de->dev->stats.rx_length_errors++;
  }
 } else if (status & RxError) {

  de->dev->stats.rx_errors++;
  if (status & 0x0890) de->dev->stats.rx_length_errors++;
  if (status & RxErrCRC) de->dev->stats.rx_crc_errors++;
  if (status & RxErrFIFO) de->dev->stats.rx_fifo_errors++;
 }
}

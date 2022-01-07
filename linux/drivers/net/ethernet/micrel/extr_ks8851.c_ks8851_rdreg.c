
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct ks8851_net {TYPE_2__* spidev; int netdev; struct spi_transfer spi_xfer1; struct spi_message spi_msg1; struct spi_transfer* spi_xfer2; struct spi_message spi_msg2; int * rxd; scalar_t__ txd; } ;
typedef int __le16 ;
struct TYPE_4__ {TYPE_1__* master; } ;
struct TYPE_3__ {int flags; } ;


 unsigned int KS_SPIOP_RD ;
 int SPI_MASTER_HALF_DUPLEX ;
 int cpu_to_le16 (unsigned int) ;
 int memcpy (int *,int *,unsigned int) ;
 int netdev_err (int ,char*) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;

__attribute__((used)) static void ks8851_rdreg(struct ks8851_net *ks, unsigned op,
    u8 *rxb, unsigned rxl)
{
 struct spi_transfer *xfer;
 struct spi_message *msg;
 __le16 *txb = (__le16 *)ks->txd;
 u8 *trx = ks->rxd;
 int ret;

 txb[0] = cpu_to_le16(op | KS_SPIOP_RD);

 if (ks->spidev->master->flags & SPI_MASTER_HALF_DUPLEX) {
  msg = &ks->spi_msg2;
  xfer = ks->spi_xfer2;

  xfer->tx_buf = txb;
  xfer->rx_buf = ((void*)0);
  xfer->len = 2;

  xfer++;
  xfer->tx_buf = ((void*)0);
  xfer->rx_buf = trx;
  xfer->len = rxl;
 } else {
  msg = &ks->spi_msg1;
  xfer = &ks->spi_xfer1;

  xfer->tx_buf = txb;
  xfer->rx_buf = trx;
  xfer->len = rxl + 2;
 }

 ret = spi_sync(ks->spidev, msg);
 if (ret < 0)
  netdev_err(ks->netdev, "read: spi_sync() failed\n");
 else if (ks->spidev->master->flags & SPI_MASTER_HALF_DUPLEX)
  memcpy(rxb, trx, rxl);
 else
  memcpy(rxb, trx + 2, rxl);
}

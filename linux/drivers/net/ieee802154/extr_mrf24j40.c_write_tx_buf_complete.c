
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * complete; } ;
struct mrf24j40 {TYPE_1__ tx_post_msg; int spi; int * tx_post_buf; int tx_skb; } ;
typedef int __le16 ;


 int BIT_TXNACKREQ ;
 int BIT_TXNSECEN ;
 int BIT_TXNTRIG ;
 int MRF24J40_WRITESHORT (int ) ;
 int REG_TXNCON ;
 int dev_err (int ,char*) ;
 int ieee802154_get_fc_from_skb (int ) ;
 scalar_t__ ieee802154_is_ackreq (int ) ;
 scalar_t__ ieee802154_is_secen (int ) ;
 int printdev (struct mrf24j40*) ;
 int spi_async (int ,TYPE_1__*) ;

__attribute__((used)) static void write_tx_buf_complete(void *context)
{
 struct mrf24j40 *devrec = context;
 __le16 fc = ieee802154_get_fc_from_skb(devrec->tx_skb);
 u8 val = BIT_TXNTRIG;
 int ret;

 if (ieee802154_is_secen(fc))
  val |= BIT_TXNSECEN;

 if (ieee802154_is_ackreq(fc))
  val |= BIT_TXNACKREQ;

 devrec->tx_post_msg.complete = ((void*)0);
 devrec->tx_post_buf[0] = MRF24J40_WRITESHORT(REG_TXNCON);
 devrec->tx_post_buf[1] = val;

 ret = spi_async(devrec->spi, &devrec->tx_post_msg);
 if (ret)
  dev_err(printdev(devrec), "SPI write Failed for transmit buf\n");
}

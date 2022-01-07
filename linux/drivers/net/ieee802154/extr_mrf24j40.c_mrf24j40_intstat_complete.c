
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mrf24j40 {int* irq_buf; int tx_skb; int hw; int regmap_short; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int BIT_RXIF ;
 int BIT_SECIF ;
 int BIT_SECIGNORE ;
 int BIT_TXNIF ;
 int REG_SECCON0 ;
 int enable_irq (int ) ;
 int ieee802154_xmit_complete (int ,int ,int) ;
 int mrf24j40_handle_rx (struct mrf24j40*) ;
 int regmap_write_async (int ,int ,int ) ;

__attribute__((used)) static void mrf24j40_intstat_complete(void *context)
{
 struct mrf24j40 *devrec = context;
 u8 intstat = devrec->irq_buf[1];

 enable_irq(devrec->spi->irq);


 if (intstat & BIT_SECIF)
  regmap_write_async(devrec->regmap_short, REG_SECCON0,
       BIT_SECIGNORE);


 if (intstat & BIT_TXNIF)
  ieee802154_xmit_complete(devrec->hw, devrec->tx_skb, 0);


 if (intstat & BIT_RXIF)
  mrf24j40_handle_rx(devrec);
}

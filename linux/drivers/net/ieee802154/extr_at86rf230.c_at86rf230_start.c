
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_trac {int dummy; } ;
struct at86rf230_local {TYPE_1__* spi; int trac; } ;
struct TYPE_2__ {int irq; } ;


 int CONFIG_IEEE802154_AT86RF230_DEBUGFS ;
 scalar_t__ IS_ENABLED (int ) ;
 int STATE_RX_AACK_ON ;
 int at86rf230_awake (struct at86rf230_local*) ;
 int at86rf230_sync_state_change (struct at86rf230_local*,int ) ;
 int enable_irq (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
at86rf230_start(struct ieee802154_hw *hw)
{
 struct at86rf230_local *lp = hw->priv;


 if (IS_ENABLED(CONFIG_IEEE802154_AT86RF230_DEBUGFS))
  memset(&lp->trac, 0, sizeof(struct at86rf230_trac));

 at86rf230_awake(lp);
 enable_irq(lp->spi->irq);

 return at86rf230_sync_state_change(lp, STATE_RX_AACK_ON);
}

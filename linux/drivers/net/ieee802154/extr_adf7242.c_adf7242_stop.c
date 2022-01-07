
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_hw {struct adf7242_local* priv; } ;
struct adf7242_local {int flags; int work; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int CMD_RC_IDLE ;
 int FLAG_START ;
 int adf7242_clear_irqstat (struct adf7242_local*) ;
 int adf7242_cmd (struct adf7242_local*,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int disable_irq (int ) ;

__attribute__((used)) static void adf7242_stop(struct ieee802154_hw *hw)
{
 struct adf7242_local *lp = hw->priv;

 disable_irq(lp->spi->irq);
 cancel_delayed_work_sync(&lp->work);
 adf7242_cmd(lp, CMD_RC_IDLE);
 clear_bit(FLAG_START, &lp->flags);
 adf7242_clear_irqstat(lp);
}

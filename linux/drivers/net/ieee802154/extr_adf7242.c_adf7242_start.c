
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_hw {struct adf7242_local* priv; } ;
struct adf7242_local {int flags; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int CMD_RC_PHY_RDY ;
 int FLAG_START ;
 int adf7242_clear_irqstat (struct adf7242_local*) ;
 int adf7242_cmd (struct adf7242_local*,int ) ;
 int adf7242_cmd_rx (struct adf7242_local*) ;
 int enable_irq (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int adf7242_start(struct ieee802154_hw *hw)
{
 struct adf7242_local *lp = hw->priv;

 adf7242_cmd(lp, CMD_RC_PHY_RDY);
 adf7242_clear_irqstat(lp);
 enable_irq(lp->spi->irq);
 set_bit(FLAG_START, &lp->flags);

 return adf7242_cmd_rx(lp);
}

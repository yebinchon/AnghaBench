
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int ARRAY_SIZE (int *) ;
 int SR_CSMA_SEED_0 ;
 int SR_CSMA_SEED_1 ;
 int STATE_FORCE_TRX_OFF ;
 int at86rf230_sleep (struct at86rf230_local*) ;
 int at86rf230_sync_state_change (struct at86rf230_local*,int ) ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int ) ;
 int disable_irq (int ) ;
 int get_random_bytes (int *,int ) ;

__attribute__((used)) static void
at86rf230_stop(struct ieee802154_hw *hw)
{
 struct at86rf230_local *lp = hw->priv;
 u8 csma_seed[2];

 at86rf230_sync_state_change(lp, STATE_FORCE_TRX_OFF);

 disable_irq(lp->spi->irq);






 get_random_bytes(csma_seed, ARRAY_SIZE(csma_seed));
 at86rf230_write_subreg(lp, SR_CSMA_SEED_0, csma_seed[0]);
 at86rf230_write_subreg(lp, SR_CSMA_SEED_1, csma_seed[1]);

 at86rf230_sleep(lp);
}

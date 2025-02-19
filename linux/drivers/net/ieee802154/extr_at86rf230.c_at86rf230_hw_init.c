
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct at86rf230_local {TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int dev; int irq; } ;
struct TYPE_3__ {scalar_t__ t_sleep_cycle; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IRQ_ACTIVE_HIGH ;
 int IRQ_ACTIVE_LOW ;
 int IRQ_TRX_END ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_LEVEL_LOW ;
 int SR_CLKM_CTRL ;
 int SR_CLKM_SHA_SEL ;
 int SR_CSMA_SEED_0 ;
 int SR_CSMA_SEED_1 ;
 int SR_DVDD_OK ;
 int SR_IRQ_MASK ;
 int SR_IRQ_MASK_MODE ;
 int SR_IRQ_POLARITY ;
 int SR_RX_SAFE_MODE ;
 int SR_SLOTTED_OPERATION ;
 int SR_XTAL_TRIM ;
 int STATE_FORCE_TRX_OFF ;
 int at86rf230_read_subreg (struct at86rf230_local*,int ,unsigned int*) ;
 int at86rf230_sync_state_change (struct at86rf230_local*,int ) ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int) ;
 int dev_err (int *,char*) ;
 int get_random_bytes (int*,int ) ;
 int irq_get_trigger_type (int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int at86rf230_hw_init(struct at86rf230_local *lp, u8 xtal_trim)
{
 int rc, irq_type, irq_pol = IRQ_ACTIVE_HIGH;
 unsigned int dvdd;
 u8 csma_seed[2];

 rc = at86rf230_sync_state_change(lp, STATE_FORCE_TRX_OFF);
 if (rc)
  return rc;

 irq_type = irq_get_trigger_type(lp->spi->irq);
 if (irq_type == IRQ_TYPE_EDGE_FALLING ||
     irq_type == IRQ_TYPE_LEVEL_LOW)
  irq_pol = IRQ_ACTIVE_LOW;

 rc = at86rf230_write_subreg(lp, SR_IRQ_POLARITY, irq_pol);
 if (rc)
  return rc;

 rc = at86rf230_write_subreg(lp, SR_RX_SAFE_MODE, 1);
 if (rc)
  return rc;

 rc = at86rf230_write_subreg(lp, SR_IRQ_MASK, IRQ_TRX_END);
 if (rc)
  return rc;


 rc = at86rf230_write_subreg(lp, SR_IRQ_MASK_MODE, 0);
 if (rc)
  return rc;

 get_random_bytes(csma_seed, ARRAY_SIZE(csma_seed));
 rc = at86rf230_write_subreg(lp, SR_CSMA_SEED_0, csma_seed[0]);
 if (rc)
  return rc;
 rc = at86rf230_write_subreg(lp, SR_CSMA_SEED_1, csma_seed[1]);
 if (rc)
  return rc;


 rc = at86rf230_write_subreg(lp, SR_CLKM_SHA_SEL, 0x00);
 if (rc)
  return rc;


 rc = at86rf230_write_subreg(lp, SR_CLKM_CTRL, 0x00);
 if (rc)
  return rc;

 usleep_range(lp->data->t_sleep_cycle,
       lp->data->t_sleep_cycle + 100);
 rc = at86rf230_write_subreg(lp, SR_XTAL_TRIM, xtal_trim);
 if (rc)
  return rc;

 rc = at86rf230_read_subreg(lp, SR_DVDD_OK, &dvdd);
 if (rc)
  return rc;
 if (!dvdd) {
  dev_err(&lp->spi->dev, "DVDD error\n");
  return -EINVAL;
 }





 return at86rf230_write_subreg(lp, SR_SLOTTED_OPERATION, 0);
}

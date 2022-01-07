
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; int card; int * irq_handler; } ;


 int EINVAL ;
 int SDIO_CCCR_IENx ;
 int mmc_io_rw_direct (int ,int,int ,int ,unsigned char,unsigned char*) ;
 int pr_debug (char*,int ) ;
 int sdio_card_irq_put (int ) ;
 int sdio_func_id (struct sdio_func*) ;
 int sdio_single_irq_set (int ) ;

int sdio_release_irq(struct sdio_func *func)
{
 int ret;
 unsigned char reg;

 if (!func)
  return -EINVAL;

 pr_debug("SDIO: Disabling IRQ for %s...\n", sdio_func_id(func));

 if (func->irq_handler) {
  func->irq_handler = ((void*)0);
  sdio_card_irq_put(func->card);
  sdio_single_irq_set(func->card);
 }

 ret = mmc_io_rw_direct(func->card, 0, 0, SDIO_CCCR_IENx, 0, &reg);
 if (ret)
  return ret;

 reg &= ~(1 << func->num);


 if (!(reg & 0xFE))
  reg = 0;

 ret = mmc_io_rw_direct(func->card, 1, 0, SDIO_CCCR_IENx, reg, ((void*)0));
 if (ret)
  return ret;

 return 0;
}

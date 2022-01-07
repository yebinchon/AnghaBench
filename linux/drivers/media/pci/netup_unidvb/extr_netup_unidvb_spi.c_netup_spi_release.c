
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct netup_unidvb_dev {struct netup_spi* spi; } ;
struct netup_spi {int master; int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int control_stat; } ;


 int NETUP_SPI_CTRL_IMASK ;
 int NETUP_SPI_CTRL_IRQ ;
 int readw (int *) ;
 int spi_unregister_master (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,int *) ;

void netup_spi_release(struct netup_unidvb_dev *ndev)
{
 u16 reg;
 unsigned long flags;
 struct netup_spi *spi = ndev->spi;

 if (!spi)
  return;

 spin_lock_irqsave(&spi->lock, flags);
 reg = readw(&spi->regs->control_stat);
 writew(reg | NETUP_SPI_CTRL_IRQ, &spi->regs->control_stat);
 reg = readw(&spi->regs->control_stat);
 writew(reg & ~NETUP_SPI_CTRL_IMASK, &spi->regs->control_stat);
 spin_unlock_irqrestore(&spi->lock, flags);
 spi_unregister_master(spi->master);
 ndev->spi = ((void*)0);
}

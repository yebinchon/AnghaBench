
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpc32xx_nand_host {int comp_controller; int comp_nand; int io_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MLCIRQ_CONTROLLER_READY ;
 int MLCIRQ_NAND_READY ;
 int MLC_IRQ_SR (int ) ;
 int complete (int *) ;
 int readb (int ) ;

__attribute__((used)) static irqreturn_t lpc3xxx_nand_irq(int irq, struct lpc32xx_nand_host *host)
{
 uint8_t sr;


 sr = readb(MLC_IRQ_SR(host->io_base));
 if (sr & MLCIRQ_NAND_READY)
  complete(&host->comp_nand);
 if (sr & MLCIRQ_CONTROLLER_READY)
  complete(&host->comp_controller);

 return IRQ_HANDLED;
}

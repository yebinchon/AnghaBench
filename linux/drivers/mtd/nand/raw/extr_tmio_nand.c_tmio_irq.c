
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {int comp; scalar_t__ fcr; } ;
typedef int irqreturn_t ;


 scalar_t__ FCR_IMR ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tmio_irq(int irq, void *__tmio)
{
 struct tmio_nand *tmio = __tmio;


 tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);
 complete(&tmio->comp);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_spi_card {int packet_work; int workqueue; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t if_spi_host_interrupt(int irq, void *dev_id)
{
 struct if_spi_card *card = dev_id;

 queue_work(card->workqueue, &card->packet_work);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_chip {int isr_work; int workqueue; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 struct pcap_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int queue_work (int ,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void pcap_irq_handler(struct irq_desc *desc)
{
 struct pcap_chip *pcap = irq_desc_get_handler_data(desc);

 desc->irq_data.chip->irq_ack(&desc->irq_data);
 queue_work(pcap->workqueue, &pcap->isr_work);
}

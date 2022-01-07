
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_chip {int msr; int msr_work; int workqueue; } ;
struct irq_data {int irq; } ;


 struct pcap_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_to_pcap (struct pcap_chip*,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void pcap_unmask_irq(struct irq_data *d)
{
 struct pcap_chip *pcap = irq_data_get_irq_chip_data(d);

 pcap->msr &= ~(1 << irq_to_pcap(pcap, d->irq));
 queue_work(pcap->workqueue, &pcap->msr_work);
}

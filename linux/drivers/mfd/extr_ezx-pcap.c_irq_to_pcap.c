
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_chip {int irq_base; } ;



int irq_to_pcap(struct pcap_chip *pcap, int irq)
{
 return irq - pcap->irq_base;
}

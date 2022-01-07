
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct pcap_chip {size_t adc_head; int adc_lock; TYPE_1__** adc_queue; } ;
struct TYPE_2__ {int flags; scalar_t__ bank; } ;


 int PCAP_ADC_ADEN ;
 int PCAP_ADC_AD_SEL1 ;
 scalar_t__ PCAP_ADC_BANK_1 ;
 int PCAP_ADC_TS_M_MASK ;
 int PCAP_ADC_TS_REF_LOWPWR ;
 int PCAP_ADR_ASC ;
 int PCAP_REG_ADC ;
 int PCAP_REG_ADR ;
 int ezx_pcap_read (struct pcap_chip*,int ,int*) ;
 int ezx_pcap_write (struct pcap_chip*,int ,int) ;
 int pcap_disable_adc (struct pcap_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcap_adc_trigger(struct pcap_chip *pcap)
{
 unsigned long flags;
 u32 tmp;
 u8 head;

 spin_lock_irqsave(&pcap->adc_lock, flags);
 head = pcap->adc_head;
 if (!pcap->adc_queue[head]) {

  pcap_disable_adc(pcap);
  spin_unlock_irqrestore(&pcap->adc_lock, flags);
  return;
 }

 ezx_pcap_read(pcap, PCAP_REG_ADC, &tmp);
 tmp &= (PCAP_ADC_TS_M_MASK | PCAP_ADC_TS_REF_LOWPWR);
 tmp |= pcap->adc_queue[head]->flags | PCAP_ADC_ADEN;

 if (pcap->adc_queue[head]->bank == PCAP_ADC_BANK_1)
  tmp |= PCAP_ADC_AD_SEL1;

 ezx_pcap_write(pcap, PCAP_REG_ADC, tmp);
 spin_unlock_irqrestore(&pcap->adc_lock, flags);
 ezx_pcap_write(pcap, PCAP_REG_ADR, PCAP_ADR_ASC);
}

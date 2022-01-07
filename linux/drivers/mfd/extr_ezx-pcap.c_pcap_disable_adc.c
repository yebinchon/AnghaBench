
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcap_chip {int dummy; } ;


 int PCAP_ADC_ADEN ;
 int PCAP_ADC_BATT_I_ADC ;
 int PCAP_ADC_BATT_I_POLARITY ;
 int PCAP_REG_ADC ;
 int ezx_pcap_read (struct pcap_chip*,int ,int*) ;
 int ezx_pcap_write (struct pcap_chip*,int ,int) ;

__attribute__((used)) static void pcap_disable_adc(struct pcap_chip *pcap)
{
 u32 tmp;

 ezx_pcap_read(pcap, PCAP_REG_ADC, &tmp);
 tmp &= ~(PCAP_ADC_ADEN|PCAP_ADC_BATT_I_ADC|PCAP_ADC_BATT_I_POLARITY);
 ezx_pcap_write(pcap, PCAP_REG_ADC, tmp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pcap_chip {int dummy; } ;
struct pcap_adc_sync_request {int * res; int completion; } ;


 int init_completion (int *) ;
 int pcap_adc_async (struct pcap_chip*,int ,int ,int *,int ,struct pcap_adc_sync_request*) ;
 int pcap_adc_sync_cb ;
 int wait_for_completion (int *) ;

int pcap_adc_sync(struct pcap_chip *pcap, u8 bank, u32 flags, u8 ch[],
        u16 res[])
{
 struct pcap_adc_sync_request sync_data;
 int ret;

 init_completion(&sync_data.completion);
 ret = pcap_adc_async(pcap, bank, flags, ch, pcap_adc_sync_cb,
        &sync_data);
 if (ret)
  return ret;
 wait_for_completion(&sync_data.completion);
 res[0] = sync_data.res[0];
 res[1] = sync_data.res[1];

 return 0;
}

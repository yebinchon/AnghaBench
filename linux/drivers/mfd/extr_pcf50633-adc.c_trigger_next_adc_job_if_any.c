
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633_adc {int queue_head; TYPE_1__** queue; } ;
struct pcf50633 {int dummy; } ;
struct TYPE_2__ {int avg; int mux; } ;


 struct pcf50633_adc* __to_adc (struct pcf50633*) ;
 int adc_setup (struct pcf50633*,int ,int ) ;

__attribute__((used)) static void trigger_next_adc_job_if_any(struct pcf50633 *pcf)
{
 struct pcf50633_adc *adc = __to_adc(pcf);
 int head;

 head = adc->queue_head;

 if (!adc->queue[head])
  return;

 adc_setup(pcf, adc->queue[head]->mux, adc->queue[head]->avg);
}

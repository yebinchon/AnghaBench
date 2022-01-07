
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc_sync_request {int result; int completion; } ;
struct pcf50633 {int dummy; } ;


 int init_completion (int *) ;
 int pcf50633_adc_async_read (struct pcf50633*,int,int,int ,struct pcf50633_adc_sync_request*) ;
 int pcf50633_adc_sync_read_callback ;
 int wait_for_completion (int *) ;

int pcf50633_adc_sync_read(struct pcf50633 *pcf, int mux, int avg)
{
 struct pcf50633_adc_sync_request req;
 int ret;

 init_completion(&req.completion);

 ret = pcf50633_adc_async_read(pcf, mux, avg,
  pcf50633_adc_sync_read_callback, &req);
 if (ret)
  return ret;

 wait_for_completion(&req.completion);

 return req.result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u32 ;
struct msdc_host {int dev; } ;
struct msdc_delay_phase {int maxlen; int start; void* final_phase; int member_0; } ;


 int PAD_DELAY_MAX ;
 int dev_err (int ,char*,scalar_t__) ;
 int dev_info (int ,char*,scalar_t__,int,void*) ;
 int get_delay_len (scalar_t__,int) ;

__attribute__((used)) static struct msdc_delay_phase get_best_delay(struct msdc_host *host, u32 delay)
{
 int start = 0, len = 0;
 int start_final = 0, len_final = 0;
 u8 final_phase = 0xff;
 struct msdc_delay_phase delay_phase = { 0, };

 if (delay == 0) {
  dev_err(host->dev, "phase error: [map:%x]\n", delay);
  delay_phase.final_phase = final_phase;
  return delay_phase;
 }

 while (start < PAD_DELAY_MAX) {
  len = get_delay_len(delay, start);
  if (len_final < len) {
   start_final = start;
   len_final = len;
  }
  start += len ? len : 1;
  if (len >= 12 && start_final < 4)
   break;
 }


 if (start_final == 0)
  final_phase = (start_final + len_final / 3) % PAD_DELAY_MAX;
 else
  final_phase = (start_final + len_final / 2) % PAD_DELAY_MAX;
 dev_info(host->dev, "phase: [map:%x] [maxlen:%d] [final:%d]\n",
   delay, len_final, final_phase);

 delay_phase.maxlen = len_final;
 delay_phase.start = start_final;
 delay_phase.final_phase = final_phase;
 return delay_phase;
}

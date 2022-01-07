
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpts {int dummy; } ;


 int EVENT_POP ;
 int TS_PEND_RAW ;
 int cpts_read32 (struct cpts*,int ) ;
 int cpts_write32 (struct cpts*,int ,int ) ;
 int event_high ;
 int event_low ;
 int event_pop ;
 int intstat_raw ;

__attribute__((used)) static int cpts_fifo_pop(struct cpts *cpts, u32 *high, u32 *low)
{
 u32 r = cpts_read32(cpts, intstat_raw);

 if (r & TS_PEND_RAW) {
  *high = cpts_read32(cpts, event_high);
  *low = cpts_read32(cpts, event_low);
  cpts_write32(cpts, EVENT_POP, event_pop);
  return 0;
 }
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct edc {unsigned long timestart; int errorcount; } ;


 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,int) ;

__attribute__((used)) static inline int edc_inc(struct edc *edc, u16 max_err, u16 timeframe)
{
 unsigned long now;

 now = jiffies;
 if (time_after(now, edc->timestart + timeframe)) {
  edc->errorcount = 1;
  edc->timestart = now;
 } else if (++edc->errorcount > max_err) {
  edc->errorcount = 0;
  edc->timestart = now;
  return 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__* non_collect_ts_start; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;


 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 unsigned long usecs_to_jiffies (size_t) ;

__attribute__((used)) static inline bool
iwl_fw_dbg_no_trig_window(struct iwl_fw_runtime *fwrt, u32 id, u32 dis_usec)
{
 unsigned long wind_jiff = usecs_to_jiffies(dis_usec);


 if (fwrt->dump.non_collect_ts_start[id] &&
     (time_after(fwrt->dump.non_collect_ts_start[id] + wind_jiff,
   jiffies)))
  return 1;

 fwrt->dump.non_collect_ts_start[id] = jiffies;
 return 0;
}

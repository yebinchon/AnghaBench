
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inited; int tx_aborted; int tx_multi_collision; int tx_errors; } ;
struct rtl8169_private {TYPE_1__ tc_offset; struct rtl8169_counters* counters; } ;
struct rtl8169_counters {int tx_aborted; int tx_multi_collision; int tx_errors; } ;


 scalar_t__ rtl8169_reset_counters (struct rtl8169_private*) ;
 scalar_t__ rtl8169_update_counters (struct rtl8169_private*) ;

__attribute__((used)) static bool rtl8169_init_counter_offsets(struct rtl8169_private *tp)
{
 struct rtl8169_counters *counters = tp->counters;
 bool ret = 0;
 if (tp->tc_offset.inited)
  return 1;


 if (rtl8169_reset_counters(tp))
  ret = 1;

 if (rtl8169_update_counters(tp))
  ret = 1;

 tp->tc_offset.tx_errors = counters->tx_errors;
 tp->tc_offset.tx_multi_collision = counters->tx_multi_collision;
 tp->tc_offset.tx_aborted = counters->tx_aborted;
 tp->tc_offset.inited = 1;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int PM_NSTATS ;
 int T6_PM_NSTATS ;
 int seq_printf (struct seq_file*,char*,char const* const,char*,...) ;
 int t4_pmrx_get_stats (struct adapter*,int *,int *) ;
 int t4_pmtx_get_stats (struct adapter*,int *,int *) ;

__attribute__((used)) static int pm_stats_show(struct seq_file *seq, void *v)
{
 static const char * const tx_pm_stats[] = {
  "Read:", "Write bypass:", "Write mem:", "Bypass + mem:"
 };
 static const char * const rx_pm_stats[] = {
  "Read:", "Write bypass:", "Write mem:", "Flush:"
 };

 int i;
 u32 tx_cnt[T6_PM_NSTATS], rx_cnt[T6_PM_NSTATS];
 u64 tx_cyc[T6_PM_NSTATS], rx_cyc[T6_PM_NSTATS];
 struct adapter *adap = seq->private;

 t4_pmtx_get_stats(adap, tx_cnt, tx_cyc);
 t4_pmrx_get_stats(adap, rx_cnt, rx_cyc);

 seq_printf(seq, "%13s %10s  %20s\n", " ", "Tx pcmds", "Tx bytes");
 for (i = 0; i < PM_NSTATS - 1; i++)
  seq_printf(seq, "%-13s %10u  %20llu\n",
      tx_pm_stats[i], tx_cnt[i], tx_cyc[i]);

 seq_printf(seq, "%13s %10s  %20s\n", " ", "Rx pcmds", "Rx bytes");
 for (i = 0; i < PM_NSTATS - 1; i++)
  seq_printf(seq, "%-13s %10u  %20llu\n",
      rx_pm_stats[i], rx_cnt[i], rx_cyc[i]);

 if (CHELSIO_CHIP_VERSION(adap->params.chip) > CHELSIO_T5) {




  seq_printf(seq, "%13s %10s  %20s\n",
      " ", "Total wait", "Total Occupancy");
  seq_printf(seq, "Tx FIFO wait  %10u  %20llu\n",
      tx_cnt[i], tx_cyc[i]);
  seq_printf(seq, "Rx FIFO wait  %10u  %20llu\n",
      rx_cnt[i], rx_cyc[i]);


  i += 2;




  seq_printf(seq, "%13s %10s  %20s\n",
      " ", "Reads", "Total wait");
  seq_printf(seq, "Tx latency    %10u  %20llu\n",
      tx_cnt[i], tx_cyc[i]);
  seq_printf(seq, "Rx latency    %10u  %20llu\n",
      rx_cnt[i], rx_cyc[i]);
 }
 return 0;
}

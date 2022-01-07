
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tp_cpl_stats {int dummy; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_CH_STATS (char*,int ) ;
 int req ;
 int rsp ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_cpl_stats (struct adapter*,struct tp_cpl_stats*,int) ;

__attribute__((used)) static void show_cpl_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_cpl_stats stats;
 u8 i;

 spin_lock(&adap->stats_lock);
 t4_tp_get_cpl_stats(adap, &stats, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_CH_STATS("tp_cpl_requests:", req);
 PRINT_CH_STATS("tp_cpl_responses:", rsp);
}

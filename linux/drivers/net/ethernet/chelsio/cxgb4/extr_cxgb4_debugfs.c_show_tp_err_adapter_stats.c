
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_err_stats {int ofld_cong_defer; int ofld_no_neigh; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_ADAP_STATS (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_err_stats (struct adapter*,struct tp_err_stats*,int) ;

__attribute__((used)) static void show_tp_err_adapter_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_err_stats stats;

 spin_lock(&adap->stats_lock);
 t4_tp_get_err_stats(adap, &stats, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_ADAP_STATS("tp_err_ofld_no_neigh:", stats.ofld_no_neigh);
 PRINT_ADAP_STATS("tp_err_ofld_cong_defer:", stats.ofld_cong_defer);
}

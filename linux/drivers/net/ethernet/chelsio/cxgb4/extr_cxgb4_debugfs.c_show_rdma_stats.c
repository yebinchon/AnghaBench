
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_rdma_stats {int rqe_dfr_pkt; int rqe_dfr_mod; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_ADAP_STATS (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_rdma_stats (struct adapter*,struct tp_rdma_stats*,int) ;

__attribute__((used)) static void show_rdma_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_rdma_stats stats;

 spin_lock(&adap->stats_lock);
 t4_tp_get_rdma_stats(adap, &stats, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_ADAP_STATS("rdma_no_rqe_mod_defer:", stats.rqe_dfr_mod);
 PRINT_ADAP_STATS("rdma_no_rqe_pkt_defer:", stats.rqe_dfr_pkt);
}

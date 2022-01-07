
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_tcp_stats {int tcp_retrans_segs; int tcp_out_segs; int tcp_in_segs; int tcp_out_rsts; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_ADAP_STATS (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_tcp_stats (struct adapter*,struct tp_tcp_stats*,struct tp_tcp_stats*,int) ;

__attribute__((used)) static void show_tcp_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_tcp_stats v4, v6;

 spin_lock(&adap->stats_lock);
 t4_tp_get_tcp_stats(adap, &v4, &v6, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_ADAP_STATS("tcp_ipv4_out_rsts:", v4.tcp_out_rsts);
 PRINT_ADAP_STATS("tcp_ipv4_in_segs:", v4.tcp_in_segs);
 PRINT_ADAP_STATS("tcp_ipv4_out_segs:", v4.tcp_out_segs);
 PRINT_ADAP_STATS("tcp_ipv4_retrans_segs:", v4.tcp_retrans_segs);
 PRINT_ADAP_STATS("tcp_ipv6_out_rsts:", v6.tcp_out_rsts);
 PRINT_ADAP_STATS("tcp_ipv6_in_segs:", v6.tcp_in_segs);
 PRINT_ADAP_STATS("tcp_ipv6_out_segs:", v6.tcp_out_segs);
 PRINT_ADAP_STATS("tcp_ipv6_retrans_segs:", v6.tcp_retrans_segs);
}

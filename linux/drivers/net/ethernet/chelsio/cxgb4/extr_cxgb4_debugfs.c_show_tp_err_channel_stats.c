
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tp_err_stats {int dummy; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_CH_STATS (char*,int ) ;
 int hdr_in_errs ;
 int mac_in_errs ;
 int ofld_chan_drops ;
 int ofld_vlan_drops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_tp_get_err_stats (struct adapter*,struct tp_err_stats*,int) ;
 int tcp6_in_errs ;
 int tcp_in_errs ;
 int tnl_cong_drops ;
 int tnl_tx_drops ;

__attribute__((used)) static void show_tp_err_channel_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_err_stats stats;
 u8 i;

 spin_lock(&adap->stats_lock);
 t4_tp_get_err_stats(adap, &stats, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_CH_STATS("tp_mac_in_errs:", mac_in_errs);
 PRINT_CH_STATS("tp_hdr_in_errs:", hdr_in_errs);
 PRINT_CH_STATS("tp_tcp_in_errs:", tcp_in_errs);
 PRINT_CH_STATS("tp_tcp6_in_errs:", tcp6_in_errs);
 PRINT_CH_STATS("tp_tnl_cong_drops:", tnl_cong_drops);
 PRINT_CH_STATS("tp_tnl_tx_drops:", tnl_tx_drops);
 PRINT_CH_STATS("tp_ofld_vlan_drops:", ofld_vlan_drops);
 PRINT_CH_STATS("tp_ofld_chan_drops:", ofld_chan_drops);
}

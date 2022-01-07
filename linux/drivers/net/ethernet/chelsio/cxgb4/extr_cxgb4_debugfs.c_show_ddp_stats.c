
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_usm_stats {int drops; int octets; int frames; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int stats_lock; } ;


 int PRINT_ADAP_STATS (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_get_usm_stats (struct adapter*,struct tp_usm_stats*,int) ;

__attribute__((used)) static void show_ddp_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_usm_stats stats;

 spin_lock(&adap->stats_lock);
 t4_get_usm_stats(adap, &stats, 0);
 spin_unlock(&adap->stats_lock);

 PRINT_ADAP_STATS("usm_ddp_frames:", stats.frames);
 PRINT_ADAP_STATS("usm_ddp_octets:", stats.octets);
 PRINT_ADAP_STATS("usm_ddp_drops:", stats.drops);
}

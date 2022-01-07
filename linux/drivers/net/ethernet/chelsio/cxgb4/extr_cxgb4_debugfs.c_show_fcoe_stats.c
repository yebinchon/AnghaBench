
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct tp_fcoe_stats {int dummy; } ;
struct seq_file {struct adapter* private; } ;
struct TYPE_3__ {size_t nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {int stats_lock; TYPE_2__ params; } ;


 int NCHAN ;
 int PRINT_CH_STATS2 (char*,int ) ;
 int frames_ddp ;
 int frames_drop ;
 int octets_ddp ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_get_fcoe_stats (struct adapter*,size_t,struct tp_fcoe_stats*,int) ;

__attribute__((used)) static void show_fcoe_stats(struct seq_file *seq)
{
 struct adapter *adap = seq->private;
 struct tp_fcoe_stats stats[NCHAN];
 u8 i;

 spin_lock(&adap->stats_lock);
 for (i = 0; i < adap->params.arch.nchan; i++)
  t4_get_fcoe_stats(adap, i, &stats[i], 0);
 spin_unlock(&adap->stats_lock);

 PRINT_CH_STATS2("fcoe_octets_ddp", octets_ddp);
 PRINT_CH_STATS2("fcoe_frames_ddp", frames_ddp);
 PRINT_CH_STATS2("fcoe_frames_drop", frames_drop);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats; int tsf; int ready; } ;
struct wil6210_priv {TYPE_1__ fw_stats_global; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int wil_link_stats_print_global (struct wil6210_priv*,struct seq_file*,int *) ;

__attribute__((used)) static int
wil_link_stats_global_debugfs_show(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;

 if (!wil->fw_stats_global.ready)
  return 0;

 seq_printf(s, "TSF %lld\n", wil->fw_stats_global.tsf);
 wil_link_stats_print_global(wil, s, &wil->fw_stats_global.stats);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct seq_tab {scalar_t__ data; } ;
struct rss_pf_conf {int rss_pf_config; void* rss_pf_mask; void* rss_pf_map; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;


 int ENOMEM ;
 int rss_pf_config_show ;
 struct seq_tab* seq_open_tab (struct file*,int,int,int,int ) ;
 int t4_read_rss_pf_config (struct adapter*,int,int *,int) ;
 void* t4_read_rss_pf_map (struct adapter*,int) ;
 void* t4_read_rss_pf_mask (struct adapter*,int) ;

__attribute__((used)) static int rss_pf_config_open(struct inode *inode, struct file *file)
{
 struct adapter *adapter = inode->i_private;
 struct seq_tab *p;
 u32 rss_pf_map, rss_pf_mask;
 struct rss_pf_conf *pfconf;
 int pf;

 p = seq_open_tab(file, 8, sizeof(*pfconf), 1, rss_pf_config_show);
 if (!p)
  return -ENOMEM;

 pfconf = (struct rss_pf_conf *)p->data;
 rss_pf_map = t4_read_rss_pf_map(adapter, 1);
 rss_pf_mask = t4_read_rss_pf_mask(adapter, 1);
 for (pf = 0; pf < 8; pf++) {
  pfconf[pf].rss_pf_map = rss_pf_map;
  pfconf[pf].rss_pf_mask = rss_pf_mask;
  t4_read_rss_pf_config(adapter, pf, &pfconf[pf].rss_pf_config,
          1);
 }
 return 0;
}

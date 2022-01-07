
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct mvpp2_dbgfs_flow_entry* private; } ;
struct mvpp2_dbgfs_flow_entry {int flow; int priv; } ;


 int mvpp2_cls_lookup_hits (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_dec_hits_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_flow_entry *entry = s->private;

 u32 hits = mvpp2_cls_lookup_hits(entry->priv, entry->flow);

 seq_printf(s, "%u\n", hits);

 return 0;
}

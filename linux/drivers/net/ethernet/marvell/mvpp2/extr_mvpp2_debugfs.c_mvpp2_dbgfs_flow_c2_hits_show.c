
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct mvpp2_dbgfs_c2_entry* private; } ;
struct mvpp2_dbgfs_c2_entry {int id; int priv; } ;


 int mvpp2_cls_c2_hit_count (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_c2_hits_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_c2_entry *entry = s->private;
 u32 hits;

 hits = mvpp2_cls_c2_hit_count(entry->priv, entry->id);

 seq_printf(s, "%u\n", hits);

 return 0;
}

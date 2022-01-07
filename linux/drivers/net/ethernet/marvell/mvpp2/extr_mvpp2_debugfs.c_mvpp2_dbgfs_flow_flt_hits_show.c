
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct mvpp2_dbgfs_flow_tbl_entry* private; } ;
struct mvpp2_dbgfs_flow_tbl_entry {int id; int priv; } ;


 int mvpp2_cls_flow_hits (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_flt_hits_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_flow_tbl_entry *entry = s->private;

 u32 hits = mvpp2_cls_flow_hits(entry->priv, entry->id);

 seq_printf(s, "%u\n", hits);

 return 0;
}

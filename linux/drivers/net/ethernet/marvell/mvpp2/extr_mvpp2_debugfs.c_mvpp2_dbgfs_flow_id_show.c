
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_flow_entry* private; } ;
struct mvpp2_dbgfs_flow_entry {int flow; } ;
struct mvpp2_cls_flow {int flow_id; } ;


 int EINVAL ;
 struct mvpp2_cls_flow* mvpp2_cls_flow_get (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_id_show(struct seq_file *s, void *unused)
{
 const struct mvpp2_dbgfs_flow_entry *entry = s->private;
 const struct mvpp2_cls_flow *f;

 f = mvpp2_cls_flow_get(entry->flow);
 if (!f)
  return -EINVAL;

 seq_printf(s, "%d\n", f->flow_id);

 return 0;
}

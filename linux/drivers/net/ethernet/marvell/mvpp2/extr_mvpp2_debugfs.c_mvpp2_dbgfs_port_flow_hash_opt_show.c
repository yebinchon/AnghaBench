
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct seq_file {struct mvpp2_dbgfs_port_flow_entry* private; } ;
struct mvpp2_port {int priv; int id; } ;
struct mvpp2_dbgfs_port_flow_entry {struct mvpp2_port* port; TYPE_1__* dbg_fe; } ;
struct mvpp2_cls_flow_entry {int dummy; } ;
struct mvpp2_cls_flow {int flow_id; } ;
struct TYPE_2__ {int flow; } ;


 int EINVAL ;
 int MVPP2_CLS_FLT_HASH_ENTRY (int ,int ) ;
 struct mvpp2_cls_flow* mvpp2_cls_flow_get (int ) ;
 int mvpp2_cls_flow_read (int ,int,struct mvpp2_cls_flow_entry*) ;
 int mvpp2_flow_get_hek_fields (struct mvpp2_cls_flow_entry*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_port_flow_hash_opt_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_port_flow_entry *entry = s->private;
 struct mvpp2_port *port = entry->port;
 struct mvpp2_cls_flow_entry fe;
 const struct mvpp2_cls_flow *f;
 int flow_index;
 u16 hash_opts;

 f = mvpp2_cls_flow_get(entry->dbg_fe->flow);
 if (!f)
  return -EINVAL;

 flow_index = MVPP2_CLS_FLT_HASH_ENTRY(entry->port->id, f->flow_id);

 mvpp2_cls_flow_read(port->priv, flow_index, &fe);

 hash_opts = mvpp2_flow_get_hek_fields(&fe);

 seq_printf(s, "0x%04x\n", hash_opts);

 return 0;
}

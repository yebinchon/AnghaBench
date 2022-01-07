
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_dbgfs_flow_entry {int flow; struct mvpp2* priv; } ;
struct mvpp2 {int port_count; int * port_list; TYPE_1__* dbgfs_entries; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct mvpp2_dbgfs_flow_entry* flow_entries; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mvpp2_dbgfs_flow_entry*,int *) ;
 int mvpp2_dbgfs_flow_dec_hits_fops ;
 int mvpp2_dbgfs_flow_id_fops ;
 int mvpp2_dbgfs_flow_port_init (struct dentry*,int ,struct mvpp2_dbgfs_flow_entry*) ;
 int mvpp2_dbgfs_flow_type_fops ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_entry_init(struct dentry *parent,
           struct mvpp2 *priv, int flow)
{
 struct mvpp2_dbgfs_flow_entry *entry;
 struct dentry *flow_entry_dir;
 char flow_entry_name[10];
 int i, ret;

 sprintf(flow_entry_name, "%02d", flow);

 flow_entry_dir = debugfs_create_dir(flow_entry_name, parent);

 entry = &priv->dbgfs_entries->flow_entries[flow];

 entry->flow = flow;
 entry->priv = priv;

 debugfs_create_file("dec_hits", 0444, flow_entry_dir, entry,
       &mvpp2_dbgfs_flow_dec_hits_fops);

 debugfs_create_file("type", 0444, flow_entry_dir, entry,
       &mvpp2_dbgfs_flow_type_fops);

 debugfs_create_file("id", 0444, flow_entry_dir, entry,
       &mvpp2_dbgfs_flow_id_fops);


 for (i = 0; i < priv->port_count; i++) {
  ret = mvpp2_dbgfs_flow_port_init(flow_entry_dir,
       priv->port_list[i], entry);
  if (ret)
   return ret;
 }

 return 0;
}

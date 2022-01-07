
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_dbgfs_flow_tbl_entry {int id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* dbgfs_entries; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct mvpp2_dbgfs_flow_tbl_entry* flt_entries; } ;


 int EINVAL ;
 int ENOMEM ;
 int MVPP2_CLS_FLOWS_TBL_SIZE ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mvpp2_dbgfs_flow_tbl_entry*,int *) ;
 int mvpp2_dbgfs_flow_flt_hits_fops ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_tbl_entry_init(struct dentry *parent,
        struct mvpp2 *priv, int id)
{
 struct mvpp2_dbgfs_flow_tbl_entry *entry;
 struct dentry *flow_tbl_entry_dir;
 char flow_tbl_entry_name[10];

 if (id >= MVPP2_CLS_FLOWS_TBL_SIZE)
  return -EINVAL;

 sprintf(flow_tbl_entry_name, "%03d", id);

 flow_tbl_entry_dir = debugfs_create_dir(flow_tbl_entry_name, parent);
 if (!flow_tbl_entry_dir)
  return -ENOMEM;

 entry = &priv->dbgfs_entries->flt_entries[id];

 entry->id = id;
 entry->priv = priv;

 debugfs_create_file("hits", 0444, flow_tbl_entry_dir, entry,
       &mvpp2_dbgfs_flow_flt_hits_fops);

 return 0;
}

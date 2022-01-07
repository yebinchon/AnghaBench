
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_dbgfs_prs_entry {int tid; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* dbgfs_entries; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct mvpp2_dbgfs_prs_entry* prs_entries; } ;


 int EINVAL ;
 int MVPP2_PRS_TCAM_SRAM_SIZE ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mvpp2_dbgfs_prs_entry*,int *) ;
 int mvpp2_dbgfs_prs_ai_fops ;
 int mvpp2_dbgfs_prs_hdata_fops ;
 int mvpp2_dbgfs_prs_hits_fops ;
 int mvpp2_dbgfs_prs_lu_fops ;
 int mvpp2_dbgfs_prs_pmap_fops ;
 int mvpp2_dbgfs_prs_sram_fops ;
 int mvpp2_dbgfs_prs_valid_fops ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_entry_init(struct dentry *parent,
          struct mvpp2 *priv, int tid)
{
 struct mvpp2_dbgfs_prs_entry *entry;
 struct dentry *prs_entry_dir;
 char prs_entry_name[10];

 if (tid >= MVPP2_PRS_TCAM_SRAM_SIZE)
  return -EINVAL;

 sprintf(prs_entry_name, "%03d", tid);

 prs_entry_dir = debugfs_create_dir(prs_entry_name, parent);

 entry = &priv->dbgfs_entries->prs_entries[tid];

 entry->tid = tid;
 entry->priv = priv;


 debugfs_create_file("sram", 0444, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_sram_fops);

 debugfs_create_file("valid", 0644, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_valid_fops);

 debugfs_create_file("lookup_id", 0644, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_lu_fops);

 debugfs_create_file("ai", 0644, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_ai_fops);

 debugfs_create_file("header_data", 0644, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_hdata_fops);

 debugfs_create_file("hits", 0444, prs_entry_dir, entry,
       &mvpp2_dbgfs_prs_hits_fops);

 debugfs_create_file("pmap", 0444, prs_entry_dir, entry,
        &mvpp2_dbgfs_prs_pmap_fops);

 return 0;
}

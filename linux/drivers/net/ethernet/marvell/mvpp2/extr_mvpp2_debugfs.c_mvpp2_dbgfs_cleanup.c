
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int dbgfs_entries; int dbgfs_dir; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (int ) ;

void mvpp2_dbgfs_cleanup(struct mvpp2 *priv)
{
 debugfs_remove_recursive(priv->dbgfs_dir);

 kfree(priv->dbgfs_entries);
}

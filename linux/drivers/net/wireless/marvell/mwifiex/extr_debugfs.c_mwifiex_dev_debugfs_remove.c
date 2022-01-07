
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dfs_dev_dir; } ;


 int debugfs_remove_recursive (int ) ;

void
mwifiex_dev_debugfs_remove(struct mwifiex_private *priv)
{
 if (!priv)
  return;

 debugfs_remove_recursive(priv->dfs_dev_dir);
}

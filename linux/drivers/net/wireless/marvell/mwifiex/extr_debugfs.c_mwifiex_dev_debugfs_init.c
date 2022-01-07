
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int dfs_dev_dir; TYPE_1__* netdev; } ;
struct TYPE_2__ {int name; } ;


 int MWIFIEX_DFS_ADD_FILE (int ) ;
 int debug ;
 int debug_mask ;
 int debugfs_create_dir (int ,int ) ;
 int getlog ;
 int histogram ;
 int hscfg ;
 int info ;
 int memrw ;
 int mwifiex_dfs_dir ;
 int rdeeprom ;
 int regrdwr ;
 int reset ;
 int timeshare_coex ;
 int verext ;

void
mwifiex_dev_debugfs_init(struct mwifiex_private *priv)
{
 if (!mwifiex_dfs_dir || !priv)
  return;

 priv->dfs_dev_dir = debugfs_create_dir(priv->netdev->name,
            mwifiex_dfs_dir);

 if (!priv->dfs_dev_dir)
  return;

 MWIFIEX_DFS_ADD_FILE(info);
 MWIFIEX_DFS_ADD_FILE(debug);
 MWIFIEX_DFS_ADD_FILE(getlog);
 MWIFIEX_DFS_ADD_FILE(regrdwr);
 MWIFIEX_DFS_ADD_FILE(rdeeprom);

 MWIFIEX_DFS_ADD_FILE(memrw);
 MWIFIEX_DFS_ADD_FILE(hscfg);
 MWIFIEX_DFS_ADD_FILE(histogram);
 MWIFIEX_DFS_ADD_FILE(debug_mask);
 MWIFIEX_DFS_ADD_FILE(timeshare_coex);
 MWIFIEX_DFS_ADD_FILE(reset);
 MWIFIEX_DFS_ADD_FILE(verext);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dir; } ;
struct dpaa2_eth_priv {TYPE_1__ dbg; } ;


 int debugfs_remove_recursive (int ) ;

void dpaa2_dbg_remove(struct dpaa2_eth_priv *priv)
{
 debugfs_remove_recursive(priv->dbg.dir);
}

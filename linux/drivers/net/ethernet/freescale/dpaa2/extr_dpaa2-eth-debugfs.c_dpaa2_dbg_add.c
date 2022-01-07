
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct dentry* dir; } ;
struct dpaa2_eth_priv {TYPE_2__ dbg; TYPE_1__* net_dev; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int name; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct dpaa2_eth_priv*,int *) ;
 int dpaa2_dbg_ch_ops ;
 int dpaa2_dbg_cpu_ops ;
 int dpaa2_dbg_fq_ops ;
 int dpaa2_dbg_root ;

void dpaa2_dbg_add(struct dpaa2_eth_priv *priv)
{
 struct dentry *dir;


 dir = debugfs_create_dir(priv->net_dev->name, dpaa2_dbg_root);
 priv->dbg.dir = dir;


 debugfs_create_file("cpu_stats", 0444, dir, priv, &dpaa2_dbg_cpu_ops);


 debugfs_create_file("fq_stats", 0444, dir, priv, &dpaa2_dbg_fq_ops);


 debugfs_create_file("ch_stats", 0444, dir, priv, &dpaa2_dbg_ch_ops);
}

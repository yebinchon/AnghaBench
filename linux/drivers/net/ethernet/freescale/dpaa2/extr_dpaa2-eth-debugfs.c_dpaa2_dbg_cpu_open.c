
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct file {int dummy; } ;
struct dpaa2_eth_priv {int net_dev; } ;


 int dpaa2_dbg_cpu_show ;
 int netdev_err (int ,char*) ;
 int single_open (struct file*,int ,struct dpaa2_eth_priv*) ;

__attribute__((used)) static int dpaa2_dbg_cpu_open(struct inode *inode, struct file *file)
{
 int err;
 struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)inode->i_private;

 err = single_open(file, dpaa2_dbg_cpu_show, priv);
 if (err < 0)
  netdev_err(priv->net_dev, "single_open() failed\n");

 return err;
}

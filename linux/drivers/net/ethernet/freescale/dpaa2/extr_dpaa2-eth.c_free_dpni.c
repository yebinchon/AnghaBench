
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int mc_token; int mc_io; int net_dev; } ;


 int dpni_close (int ,int ,int ) ;
 int dpni_reset (int ,int ,int ) ;
 int netdev_warn (int ,char*,int) ;

__attribute__((used)) static void free_dpni(struct dpaa2_eth_priv *priv)
{
 int err;

 err = dpni_reset(priv->mc_io, 0, priv->mc_token);
 if (err)
  netdev_warn(priv->net_dev, "dpni_reset() failed (err %d)\n",
       err);

 dpni_close(priv->mc_io, 0, priv->mc_token);
}

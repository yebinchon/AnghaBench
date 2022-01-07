
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_eth_priv {TYPE_1__* dpbp_dev; int mc_io; } ;
struct TYPE_2__ {int mc_handle; } ;


 int dpbp_close (int ,int ,int ) ;
 int dpbp_disable (int ,int ,int ) ;
 int drain_pool (struct dpaa2_eth_priv*) ;
 int fsl_mc_object_free (TYPE_1__*) ;

__attribute__((used)) static void free_dpbp(struct dpaa2_eth_priv *priv)
{
 drain_pool(priv);
 dpbp_disable(priv->mc_io, 0, priv->dpbp_dev->mc_handle);
 dpbp_close(priv->mc_io, 0, priv->dpbp_dev->mc_handle);
 fsl_mc_object_free(priv->dpbp_dev);
}

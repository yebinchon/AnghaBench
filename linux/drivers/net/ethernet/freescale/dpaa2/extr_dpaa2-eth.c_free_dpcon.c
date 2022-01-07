
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int mc_handle; } ;
struct dpaa2_eth_priv {int mc_io; } ;


 int dpcon_close (int ,int ,int ) ;
 int dpcon_disable (int ,int ,int ) ;
 int fsl_mc_object_free (struct fsl_mc_device*) ;

__attribute__((used)) static void free_dpcon(struct dpaa2_eth_priv *priv,
         struct fsl_mc_device *dpcon)
{
 dpcon_disable(priv->mc_io, 0, dpcon->mc_handle);
 dpcon_close(priv->mc_io, 0, dpcon->mc_handle);
 fsl_mc_object_free(dpcon);
}

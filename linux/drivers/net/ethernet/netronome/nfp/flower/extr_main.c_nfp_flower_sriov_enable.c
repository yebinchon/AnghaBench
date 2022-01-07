
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int nn; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF ;
 int NFP_REPR_TYPE_VF ;
 int nfp_flower_spawn_vnic_reprs (struct nfp_app*,int ,int ,int) ;

__attribute__((used)) static int nfp_flower_sriov_enable(struct nfp_app *app, int num_vfs)
{
 struct nfp_flower_priv *priv = app->priv;

 if (!priv->nn)
  return 0;

 return nfp_flower_spawn_vnic_reprs(app,
        NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF,
        NFP_REPR_TYPE_VF, num_vfs);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mod_hdr_tbl {int dummy; } ;
struct TYPE_9__ {struct mod_hdr_tbl mod_hdr; } ;
struct TYPE_10__ {TYPE_4__ tc; } ;
struct mlx5e_priv {TYPE_5__ fs; TYPE_2__* mdev; } ;
struct TYPE_8__ {struct mod_hdr_tbl mod_hdr; } ;
struct mlx5_eswitch {TYPE_3__ offloads; } ;
struct TYPE_6__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_7__ {TYPE_1__ priv; } ;


 int MLX5_FLOW_NAMESPACE_FDB ;

__attribute__((used)) static struct mod_hdr_tbl *
get_mod_hdr_table(struct mlx5e_priv *priv, int namespace)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;

 return namespace == MLX5_FLOW_NAMESPACE_FDB ? &esw->offloads.mod_hdr :
  &priv->fs.tc.mod_hdr;
}

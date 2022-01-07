
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int aux_icm; } ;
struct TYPE_13__ {int cmpt_table; int qp_table; int auxc_table; int altc_table; int rdmarc_table; } ;
struct TYPE_12__ {int cmpt_table; int table; } ;
struct TYPE_11__ {int cmpt_table; int table; } ;
struct TYPE_10__ {int cmpt_table; int table; } ;
struct TYPE_9__ {int mtt_table; int dmpt_table; } ;
struct TYPE_8__ {int table; } ;
struct mlx4_priv {TYPE_7__ fw; TYPE_6__ qp_table; TYPE_5__ srq_table; TYPE_4__ cq_table; TYPE_3__ eq_table; TYPE_2__ mr_table; TYPE_1__ mcg_table; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_UNMAP_ICM_AUX (struct mlx4_dev*) ;
 int mlx4_cleanup_icm_table (struct mlx4_dev*,int *) ;
 int mlx4_free_icm (struct mlx4_dev*,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_free_icms(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 mlx4_cleanup_icm_table(dev, &priv->mcg_table.table);
 mlx4_cleanup_icm_table(dev, &priv->srq_table.table);
 mlx4_cleanup_icm_table(dev, &priv->cq_table.table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.rdmarc_table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.altc_table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.auxc_table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.qp_table);
 mlx4_cleanup_icm_table(dev, &priv->mr_table.dmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->mr_table.mtt_table);
 mlx4_cleanup_icm_table(dev, &priv->eq_table.table);
 mlx4_cleanup_icm_table(dev, &priv->eq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->cq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->srq_table.cmpt_table);
 mlx4_cleanup_icm_table(dev, &priv->qp_table.cmpt_table);

 mlx4_UNMAP_ICM_AUX(dev);
 mlx4_free_icm(dev, priv->fw.aux_icm, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_hairpin {int indir_rqt; int ttc; struct mlx5e_priv* func_priv; } ;


 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 int mlx5e_destroy_ttc_table (struct mlx5e_priv*,int *) ;
 int mlx5e_hairpin_destroy_indirect_tirs (struct mlx5e_hairpin*) ;

__attribute__((used)) static void mlx5e_hairpin_rss_cleanup(struct mlx5e_hairpin *hp)
{
 struct mlx5e_priv *priv = hp->func_priv;

 mlx5e_destroy_ttc_table(priv, &hp->ttc);
 mlx5e_hairpin_destroy_indirect_tirs(hp);
 mlx5e_destroy_rqt(priv, &hp->indir_rqt);
}

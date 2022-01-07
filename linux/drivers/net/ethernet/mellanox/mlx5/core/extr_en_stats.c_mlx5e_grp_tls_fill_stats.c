
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_tls_get_stats (struct mlx5e_priv*,int *) ;

__attribute__((used)) static int mlx5e_grp_tls_fill_stats(struct mlx5e_priv *priv, u64 *data, int idx)
{
 return idx + mlx5e_tls_get_stats(priv, data + idx);
}

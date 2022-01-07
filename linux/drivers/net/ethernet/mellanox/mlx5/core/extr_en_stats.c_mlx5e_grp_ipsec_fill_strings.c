
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5e_priv {int dummy; } ;


 int ETH_GSTRING_LEN ;
 int mlx5e_ipsec_get_strings (struct mlx5e_priv*,int *) ;

__attribute__((used)) static int mlx5e_grp_ipsec_fill_strings(struct mlx5e_priv *priv, u8 *data,
     int idx)
{
 return idx + mlx5e_ipsec_get_strings(priv,
          data + idx * ETH_GSTRING_LEN);
}

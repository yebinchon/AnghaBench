
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tun_entropy {int enabled; int mdev; scalar_t__ num_enabling_entries; } ;
struct mlx5_port_tun_entropy_flags {int calc_enabled; scalar_t__ force_supported; scalar_t__ force_enabled; scalar_t__ calc_supported; scalar_t__ gre_calc_supported; } ;


 int EOPNOTSUPP ;
 int MLX5_REFORMAT_TYPE_L2_TO_NVGRE ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5_query_port_tun_entropy (int ,struct mlx5_port_tun_entropy_flags*) ;
 int mlx5_set_port_gre_tun_entropy_calc (int ,int,int) ;
 int mlx5_set_port_tun_entropy_calc (int ,int,scalar_t__) ;

__attribute__((used)) static int mlx5_set_entropy(struct mlx5_tun_entropy *tun_entropy,
       int reformat_type, bool enable)
{
 struct mlx5_port_tun_entropy_flags entropy_flags;
 int err;

 mlx5_query_port_tun_entropy(tun_entropy->mdev, &entropy_flags);





 if (entropy_flags.gre_calc_supported &&
     reformat_type == MLX5_REFORMAT_TYPE_L2_TO_NVGRE) {
  if (!entropy_flags.force_supported)
   return 0;
  err = mlx5_set_port_gre_tun_entropy_calc(tun_entropy->mdev,
        enable, !enable);
  if (err)
   return err;
 } else if (entropy_flags.calc_supported) {




  if (entropy_flags.force_enabled &&
      enable == entropy_flags.calc_enabled) {
   mlx5_core_warn(tun_entropy->mdev,
           "Unexpected entropy calc setting - expected %d",
           !entropy_flags.calc_enabled);
   return -EOPNOTSUPP;
  }




  if (tun_entropy->num_enabling_entries)
   return -EOPNOTSUPP;
  err = mlx5_set_port_tun_entropy_calc(tun_entropy->mdev, enable,
           entropy_flags.force_supported);
  if (err)
   return err;
  tun_entropy->enabled = enable;

  if (entropy_flags.force_supported && enable) {
   err = mlx5_set_port_tun_entropy_calc(tun_entropy->mdev, 1, 0);
   if (err)
    return err;
  }
 }

 return 0;
}

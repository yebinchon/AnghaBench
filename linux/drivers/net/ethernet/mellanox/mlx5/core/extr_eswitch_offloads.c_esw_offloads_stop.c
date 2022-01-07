
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;


 int MLX5_ESWITCH_LEGACY ;
 int MLX5_ESWITCH_OFFLOADS ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int mlx5_eswitch_disable (struct mlx5_eswitch*) ;
 int mlx5_eswitch_enable (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static int esw_offloads_stop(struct mlx5_eswitch *esw,
        struct netlink_ext_ack *extack)
{
 int err, err1;

 mlx5_eswitch_disable(esw);
 err = mlx5_eswitch_enable(esw, MLX5_ESWITCH_LEGACY);
 if (err) {
  NL_SET_ERR_MSG_MOD(extack, "Failed setting eswitch to legacy");
  err1 = mlx5_eswitch_enable(esw, MLX5_ESWITCH_OFFLOADS);
  if (err1) {
   NL_SET_ERR_MSG_MOD(extack,
        "Failed setting eswitch back to offloads");
  }
 }

 return err;
}

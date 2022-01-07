
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ieee_maxrate {int* tc_maxrate; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLX5E_100MB ;
 int MLX5E_1GB ;



 int WARN (int,char*) ;
 int memset (int*,int ,int) ;
 int mlx5_max_tc (struct mlx5_core_dev*) ;
 int mlx5_query_port_ets_rate_limit (struct mlx5_core_dev*,int*,int*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_dcbnl_ieee_getmaxrate(struct net_device *netdev,
           struct ieee_maxrate *maxrate)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 max_bw_value[IEEE_8021QAZ_MAX_TCS];
 u8 max_bw_unit[IEEE_8021QAZ_MAX_TCS];
 int err;
 int i;

 err = mlx5_query_port_ets_rate_limit(mdev, max_bw_value, max_bw_unit);
 if (err)
  return err;

 memset(maxrate->tc_maxrate, 0, sizeof(maxrate->tc_maxrate));

 for (i = 0; i <= mlx5_max_tc(mdev); i++) {
  switch (max_bw_unit[i]) {
  case 130:
   maxrate->tc_maxrate[i] = max_bw_value[i] * MLX5E_100MB;
   break;
  case 128:
   maxrate->tc_maxrate[i] = max_bw_value[i] * MLX5E_1GB;
   break;
  case 129:
   break;
  default:
   WARN(1, "non-supported BW unit");
   break;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int maxrate; } ;
struct ieee_maxrate {scalar_t__* tc_maxrate; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ MLX4_RATELIMIT_UNITS_IN_KB ;
 int div_u64 (scalar_t__,scalar_t__) ;
 int memcpy (int ,int *,int) ;
 int mlx4_en_config_port_scheduler (struct mlx4_en_priv*,int *,int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_ieee_setmaxrate(struct net_device *dev,
  struct ieee_maxrate *maxrate)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 u16 tmp[IEEE_8021QAZ_MAX_TCS];
 int i, err;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {



  tmp[i] = div_u64(maxrate->tc_maxrate[i] +
     MLX4_RATELIMIT_UNITS_IN_KB - 1,
     MLX4_RATELIMIT_UNITS_IN_KB);
 }

 err = mlx4_en_config_port_scheduler(priv, ((void*)0), tmp);
 if (err)
  return err;

 memcpy(priv->maxrate, tmp, sizeof(priv->maxrate));

 return 0;
}

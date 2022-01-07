
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 int mlx5e_get_pfc_prevention_tout (struct net_device*,void*) ;

__attribute__((used)) static int mlx5e_get_tunable(struct net_device *dev,
        const struct ethtool_tunable *tuna,
        void *data)
{
 int err;

 switch (tuna->id) {
 case 128:
  err = mlx5e_get_pfc_prevention_tout(dev, data);
  break;
 default:
  err = -EINVAL;
  break;
 }

 return err;
}

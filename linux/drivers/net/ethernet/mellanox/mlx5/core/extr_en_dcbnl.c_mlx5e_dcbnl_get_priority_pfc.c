
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ieee_pfc {int pfc_en; } ;


 int mlx5e_dcbnl_ieee_getpfc (struct net_device*,struct ieee_pfc*) ;

__attribute__((used)) static int
mlx5e_dcbnl_get_priority_pfc(struct net_device *netdev,
        int priority, u8 *setting)
{
 struct ieee_pfc pfc;
 int err;

 err = mlx5e_dcbnl_ieee_getpfc(netdev, &pfc);

 if (err)
  *setting = 0;
 else
  *setting = (pfc.pfc_en >> priority) & 0x01;

 return err;
}

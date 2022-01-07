
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_span_parms {int dest_port; } ;


 int netdev_priv (struct net_device const*) ;

__attribute__((used)) static int
mlxsw_sp_span_entry_phys_parms(const struct net_device *to_dev,
          struct mlxsw_sp_span_parms *sparmsp)
{
 sparmsp->dest_port = netdev_priv(to_dev);
 return 0;
}

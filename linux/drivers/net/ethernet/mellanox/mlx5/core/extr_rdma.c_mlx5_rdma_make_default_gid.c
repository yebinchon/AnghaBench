
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subnet_prefix; } ;
union ib_gid {int * raw; TYPE_1__ global; } ;
typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 int ETH_ALEN ;
 int addrconf_addr_eui48 (int *,int *) ;
 int cpu_to_be64 (int) ;
 int mlx5_query_mac_address (struct mlx5_core_dev*,int *) ;

__attribute__((used)) static void mlx5_rdma_make_default_gid(struct mlx5_core_dev *dev, union ib_gid *gid)
{
 u8 hw_id[ETH_ALEN];

 mlx5_query_mac_address(dev, hw_id);
 gid->global.subnet_prefix = cpu_to_be64(0xfe80000000000000LL);
 addrconf_addr_eui48(&gid->raw[8], hw_id);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_ports; scalar_t__* port_type; int * def_mac; } ;
struct mlx4_dev {int port_random_macs; TYPE_1__ caps; } ;


 int ETH_ALEN ;
 scalar_t__ MLX4_PORT_TYPE_ETH ;
 int eth_random_addr (int *) ;
 int mlx4_mac_to_u64 (int *) ;

void mlx4_replace_zero_macs(struct mlx4_dev *dev)
{
 int i;
 u8 mac_addr[ETH_ALEN];

 dev->port_random_macs = 0;
 for (i = 1; i <= dev->caps.num_ports; ++i)
  if (!dev->caps.def_mac[i] &&
      dev->caps.port_type[i] == MLX4_PORT_TYPE_ETH) {
   eth_random_addr(mac_addr);
   dev->port_random_macs |= 1 << i;
   dev->caps.def_mac[i] = mlx4_mac_to_u64(mac_addr);
  }
}

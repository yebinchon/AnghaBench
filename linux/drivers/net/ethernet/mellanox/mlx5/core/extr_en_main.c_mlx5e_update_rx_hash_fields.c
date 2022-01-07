
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_tirc_config {int rx_hash_fields; } ;
typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;


 struct mlx5e_tirc_config* tirc_default_config ;

__attribute__((used)) static void mlx5e_update_rx_hash_fields(struct mlx5e_tirc_config *ttconfig,
     enum mlx5e_traffic_types tt,
     u32 rx_hash_fields)
{
 *ttconfig = tirc_default_config[tt];
 ttconfig->rx_hash_fields = rx_hash_fields;
}

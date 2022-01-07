
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlx5e_rss_params {int * rx_hash_fields; int indirection_rqt; int toeplitz_hash_key; int hfunc; } ;
typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;
struct TYPE_2__ {int rx_hash_fields; } ;


 int ETH_RSS_HASH_TOP ;
 int MLX5E_INDIR_RQT_SIZE ;
 int MLX5E_NUM_INDIR_TIRS ;
 int mlx5e_build_default_indir_rqt (int ,int ,int ) ;
 int netdev_rss_key_fill (int ,int) ;
 TYPE_1__* tirc_default_config ;

void mlx5e_build_rss_params(struct mlx5e_rss_params *rss_params,
       u16 num_channels)
{
 enum mlx5e_traffic_types tt;

 rss_params->hfunc = ETH_RSS_HASH_TOP;
 netdev_rss_key_fill(rss_params->toeplitz_hash_key,
       sizeof(rss_params->toeplitz_hash_key));
 mlx5e_build_default_indir_rqt(rss_params->indirection_rqt,
          MLX5E_INDIR_RQT_SIZE, num_channels);
 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  rss_params->rx_hash_fields[tt] =
   tirc_default_config[tt].rx_hash_fields;
}

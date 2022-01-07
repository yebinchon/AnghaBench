
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_2__ {int format; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ MLX5_CAP_PCAM_FEATURE (int ,int ) ;
 int NUM_PPORT_ETH_EXT_COUNTERS ;
 TYPE_1__* pport_eth_ext_stats_desc ;
 int rx_buffer_fullness_counters ;
 int strcpy (int *,int ) ;

__attribute__((used)) static int mlx5e_grp_eth_ext_fill_strings(struct mlx5e_priv *priv, u8 *data,
       int idx)
{
 int i;

 if (MLX5_CAP_PCAM_FEATURE((priv)->mdev, rx_buffer_fullness_counters))
  for (i = 0; i < NUM_PPORT_ETH_EXT_COUNTERS; i++)
   strcpy(data + (idx++) * ETH_GSTRING_LEN,
          pport_eth_ext_stats_desc[i].format);
 return idx;
}

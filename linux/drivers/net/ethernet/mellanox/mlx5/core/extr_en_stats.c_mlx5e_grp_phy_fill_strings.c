
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {char* format; } ;
struct TYPE_3__ {char* format; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int NUM_PPORT_PHY_STATISTICAL_COUNTERS ;
 int NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS ;
 int per_lane_error_counters ;
 int ppcnt_statistical_group ;
 TYPE_2__* pport_phy_statistical_err_lanes_stats_desc ;
 TYPE_1__* pport_phy_statistical_stats_desc ;
 int strcpy (int *,char*) ;

__attribute__((used)) static int mlx5e_grp_phy_fill_strings(struct mlx5e_priv *priv, u8 *data,
          int idx)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 int i;

 strcpy(data + (idx++) * ETH_GSTRING_LEN, "link_down_events_phy");

 if (!MLX5_CAP_PCAM_FEATURE(mdev, ppcnt_statistical_group))
  return idx;

 for (i = 0; i < NUM_PPORT_PHY_STATISTICAL_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         pport_phy_statistical_stats_desc[i].format);

 if (MLX5_CAP_PCAM_FEATURE(mdev, per_lane_error_counters))
  for (i = 0; i < NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS; i++)
   strcpy(data + (idx++) * ETH_GSTRING_LEN,
          pport_phy_statistical_err_lanes_stats_desc[i].format);

 return idx;
}

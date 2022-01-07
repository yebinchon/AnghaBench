
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {unsigned long* lp_advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 int MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int ptys2ethtool_adver_link (unsigned long*,int ,int) ;
 int ptys_extended_ethernet ;

__attribute__((used)) static void get_lp_advertising(struct mlx5_core_dev *mdev, u32 eth_proto_lp,
          struct ethtool_link_ksettings *link_ksettings)
{
 unsigned long *lp_advertising = link_ksettings->link_modes.lp_advertising;
 bool ext = MLX5_CAP_PCAM_FEATURE(mdev, ptys_extended_ethernet);

 ptys2ethtool_adver_link(lp_advertising, eth_proto_lp, ext);
}

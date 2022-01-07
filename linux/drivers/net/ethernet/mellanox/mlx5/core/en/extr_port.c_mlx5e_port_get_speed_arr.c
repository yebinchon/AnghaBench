
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int * mlx5e_ext_link_speed ;
 int * mlx5e_link_speed ;
 int ptys_extended_ethernet ;

__attribute__((used)) static void mlx5e_port_get_speed_arr(struct mlx5_core_dev *mdev,
         const u32 **arr, u32 *size,
         bool force_legacy)
{
 bool ext = force_legacy ? 0 : MLX5_CAP_PCAM_FEATURE(mdev, ptys_extended_ethernet);

 *size = ext ? ARRAY_SIZE(mlx5e_ext_link_speed) :
        ARRAY_SIZE(mlx5e_link_speed);
 *arr = ext ? mlx5e_ext_link_speed : mlx5e_link_speed;
}

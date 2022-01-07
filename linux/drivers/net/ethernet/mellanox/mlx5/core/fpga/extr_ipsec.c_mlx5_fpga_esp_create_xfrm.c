
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_accel_esp_xfrm {int attrs; } ;
struct mlx5_fpga_esp_xfrm {struct mlx5_accel_esp_xfrm accel_xfrm; int lock; } ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_accel_esp_xfrm_attrs {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct mlx5_accel_esp_xfrm* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA ;
 struct mlx5_fpga_esp_xfrm* kzalloc (int,int ) ;
 int memcpy (int *,struct mlx5_accel_esp_xfrm_attrs const*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 scalar_t__ mlx5_fpga_esp_validate_xfrm_attrs (struct mlx5_core_dev*,struct mlx5_accel_esp_xfrm_attrs const*) ;
 int mutex_init (int *) ;

struct mlx5_accel_esp_xfrm *
mlx5_fpga_esp_create_xfrm(struct mlx5_core_dev *mdev,
     const struct mlx5_accel_esp_xfrm_attrs *attrs,
     u32 flags)
{
 struct mlx5_fpga_esp_xfrm *fpga_xfrm;

 if (!(flags & MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA)) {
  mlx5_core_warn(mdev, "Tried to create an esp action without metadata\n");
  return ERR_PTR(-EINVAL);
 }

 if (mlx5_fpga_esp_validate_xfrm_attrs(mdev, attrs)) {
  mlx5_core_warn(mdev, "Tried to create an esp with unsupported attrs\n");
  return ERR_PTR(-EOPNOTSUPP);
 }

 fpga_xfrm = kzalloc(sizeof(*fpga_xfrm), GFP_KERNEL);
 if (!fpga_xfrm)
  return ERR_PTR(-ENOMEM);

 mutex_init(&fpga_xfrm->lock);
 memcpy(&fpga_xfrm->accel_xfrm.attrs, attrs,
        sizeof(fpga_xfrm->accel_xfrm.attrs));

 return &fpga_xfrm->accel_xfrm;
}

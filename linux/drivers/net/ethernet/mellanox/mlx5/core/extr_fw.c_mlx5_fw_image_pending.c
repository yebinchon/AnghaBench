
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int ENODATA ;
 scalar_t__ MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET ;
 scalar_t__ MCQS_UPDATE_STATE_IDLE ;
 scalar_t__ MLX5_GET (int ,int *,scalar_t__) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mcqs_reg ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,scalar_t__) ;
 int mlx5_reg_mcqs_query (struct mlx5_core_dev*,int *,int) ;

__attribute__((used)) static int
mlx5_fw_image_pending(struct mlx5_core_dev *dev,
        int component_index,
        bool *pending_version_exists)
{
 u32 out[MLX5_ST_SZ_DW(mcqs_reg)];
 u8 component_update_state;
 int err;

 err = mlx5_reg_mcqs_query(dev, out, component_index);
 if (err)
  return err;

 component_update_state = MLX5_GET(mcqs_reg, out, component_update_state);

 if (component_update_state == MCQS_UPDATE_STATE_IDLE) {
  *pending_version_exists = 0;
 } else if (component_update_state == MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET) {
  *pending_version_exists = 1;
 } else {
  mlx5_core_warn(dev,
          "mcqs: can't read pending fw version while fw state is %d\n",
          component_update_state);
  return -ENODATA;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_query {scalar_t__ status; int oper_image; int admin_image; } ;
struct mlx5_fpga_device {int last_oper_image; int last_admin_image; int mdev; } ;


 int EIO ;
 scalar_t__ MLX5_FPGA_STATUS_SUCCESS ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,scalar_t__,int ,int ) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int,...) ;
 int mlx5_fpga_image_name (int ) ;
 int mlx5_fpga_query (int ,struct mlx5_fpga_query*) ;

__attribute__((used)) static int mlx5_fpga_device_load_check(struct mlx5_fpga_device *fdev)
{
 struct mlx5_fpga_query query;
 int err;

 err = mlx5_fpga_query(fdev->mdev, &query);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to query status: %d\n", err);
  return err;
 }

 fdev->last_admin_image = query.admin_image;
 fdev->last_oper_image = query.oper_image;

 mlx5_fpga_dbg(fdev, "Status %u; Admin image %u; Oper image %u\n",
        query.status, query.admin_image, query.oper_image);

 if (query.status != MLX5_FPGA_STATUS_SUCCESS) {
  mlx5_fpga_err(fdev, "%s image failed to load; status %u\n",
         mlx5_fpga_image_name(fdev->last_oper_image),
         query.status);
  return -EIO;
 }

 return 0;
}

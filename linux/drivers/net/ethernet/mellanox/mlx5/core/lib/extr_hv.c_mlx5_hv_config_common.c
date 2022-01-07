
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int HV_CONFIG_BLOCK_SIZE_MAX ;
 int hyperv_read_cfg_blk (int ,void*,int,int,int*) ;
 int hyperv_write_cfg_blk (int ,void*,int,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,char*,int,int,int) ;

__attribute__((used)) static int mlx5_hv_config_common(struct mlx5_core_dev *dev, void *buf, int len,
     int offset, bool read)
{
 int rc = -EOPNOTSUPP;
 int bytes_returned;
 int block_id;

 if (offset % HV_CONFIG_BLOCK_SIZE_MAX || len != HV_CONFIG_BLOCK_SIZE_MAX)
  return -EINVAL;

 block_id = offset / HV_CONFIG_BLOCK_SIZE_MAX;

 rc = read ?
      hyperv_read_cfg_blk(dev->pdev, buf,
     HV_CONFIG_BLOCK_SIZE_MAX, block_id,
     &bytes_returned) :
      hyperv_write_cfg_blk(dev->pdev, buf,
      HV_CONFIG_BLOCK_SIZE_MAX, block_id);


 if (read && !rc && len != bytes_returned)
  rc = -EIO;

 if (rc) {
  mlx5_core_err(dev, "Failed to %s hv config, err = %d, len = %d, offset = %d\n",
         read ? "read" : "write", rc, len,
         offset);
  return rc;
 }

 return 0;
}

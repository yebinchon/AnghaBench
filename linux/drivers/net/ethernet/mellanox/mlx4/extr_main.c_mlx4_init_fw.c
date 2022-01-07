
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mod_stat_cfg {int log_pg_sz_m; scalar_t__ log_pg_sz; } ;
struct mlx4_dev {int dummy; } ;


 int EACCES ;
 int mlx4_MOD_STAT_CFG (struct mlx4_dev*,struct mlx4_mod_stat_cfg*) ;
 int mlx4_QUERY_FW (struct mlx4_dev*) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_info (struct mlx4_dev*,char*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_load_fw (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;

__attribute__((used)) static int mlx4_init_fw(struct mlx4_dev *dev)
{
 struct mlx4_mod_stat_cfg mlx4_cfg;
 int err = 0;

 if (!mlx4_is_slave(dev)) {
  err = mlx4_QUERY_FW(dev);
  if (err) {
   if (err == -EACCES)
    mlx4_info(dev, "non-primary physical function, skipping\n");
   else
    mlx4_err(dev, "QUERY_FW command failed, aborting\n");
   return err;
  }

  err = mlx4_load_fw(dev);
  if (err) {
   mlx4_err(dev, "Failed to start FW, aborting\n");
   return err;
  }

  mlx4_cfg.log_pg_sz_m = 1;
  mlx4_cfg.log_pg_sz = 0;
  err = mlx4_MOD_STAT_CFG(dev, &mlx4_cfg);
  if (err)
   mlx4_warn(dev, "Failed to override log_pg_sz parameter\n");
 }

 return err;
}

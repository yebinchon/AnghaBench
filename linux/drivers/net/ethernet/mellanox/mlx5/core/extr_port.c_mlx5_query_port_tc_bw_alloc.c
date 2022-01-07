
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 size_t MLX5_GET (int ,void*,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int bw_allocation ;
 int ets_tcn_config_reg ;
 int mlx5_query_port_qetcr_reg (struct mlx5_core_dev*,int *,int) ;
 int qetc_reg ;
 int * tc_configuration ;

int mlx5_query_port_tc_bw_alloc(struct mlx5_core_dev *mdev,
    u8 tc, u8 *bw_pct)
{
 u32 out[MLX5_ST_SZ_DW(qetc_reg)];
 void *ets_tcn_conf;
 int err;

 err = mlx5_query_port_qetcr_reg(mdev, out, sizeof(out));
 if (err)
  return err;

 ets_tcn_conf = MLX5_ADDR_OF(qetc_reg, out,
        tc_configuration[tc]);

 *bw_pct = MLX5_GET(ets_tcn_config_reg, ets_tcn_conf,
      bw_allocation);

 return 0;
}

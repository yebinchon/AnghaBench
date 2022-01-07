
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp {TYPE_2__* sb; int core; TYPE_1__* sb_vals; } ;
struct TYPE_5__ {int cell_size; int max_headroom_cells; void* sb_size; } ;
struct TYPE_4__ {int pool_count; int prs; } ;


 int CELL_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BUFFER_SIZE ;
 int MAX_HEADROOM_SIZE ;
 void* MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 int MLXSW_SP_SB_EG_TC_COUNT ;
 int MLXSW_SP_SB_ING_TC_COUNT ;
 int devlink_sb_register (int ,int ,void*,int ,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int mlxsw_sp_cpu_port_sb_cms_init (struct mlxsw_sp*) ;
 int mlxsw_sp_cpu_port_sb_pms_init (struct mlxsw_sp*) ;
 int mlxsw_sp_pool_count (struct mlxsw_sp*,int *,int *) ;
 int mlxsw_sp_sb_mms_init (struct mlxsw_sp*) ;
 int mlxsw_sp_sb_ports_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_sb_ports_init (struct mlxsw_sp*) ;
 int mlxsw_sp_sb_prs_init (struct mlxsw_sp*,int ,int ) ;
 int priv_to_devlink (int ) ;

int mlxsw_sp_buffers_init(struct mlxsw_sp *mlxsw_sp)
{
 u32 max_headroom_size;
 u16 ing_pool_count = 0;
 u16 eg_pool_count = 0;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, CELL_SIZE))
  return -EIO;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, MAX_BUFFER_SIZE))
  return -EIO;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, MAX_HEADROOM_SIZE))
  return -EIO;

 mlxsw_sp->sb = kzalloc(sizeof(*mlxsw_sp->sb), GFP_KERNEL);
 if (!mlxsw_sp->sb)
  return -ENOMEM;
 mlxsw_sp->sb->cell_size = MLXSW_CORE_RES_GET(mlxsw_sp->core, CELL_SIZE);
 mlxsw_sp->sb->sb_size = MLXSW_CORE_RES_GET(mlxsw_sp->core,
         MAX_BUFFER_SIZE);
 max_headroom_size = MLXSW_CORE_RES_GET(mlxsw_sp->core,
            MAX_HEADROOM_SIZE);

 mlxsw_sp->sb->max_headroom_cells = max_headroom_size /
      mlxsw_sp->sb->cell_size;

 err = mlxsw_sp_sb_ports_init(mlxsw_sp);
 if (err)
  goto err_sb_ports_init;
 err = mlxsw_sp_sb_prs_init(mlxsw_sp, mlxsw_sp->sb_vals->prs,
       mlxsw_sp->sb_vals->pool_count);
 if (err)
  goto err_sb_prs_init;
 err = mlxsw_sp_cpu_port_sb_cms_init(mlxsw_sp);
 if (err)
  goto err_sb_cpu_port_sb_cms_init;
 err = mlxsw_sp_cpu_port_sb_pms_init(mlxsw_sp);
 if (err)
  goto err_sb_cpu_port_pms_init;
 err = mlxsw_sp_sb_mms_init(mlxsw_sp);
 if (err)
  goto err_sb_mms_init;
 mlxsw_sp_pool_count(mlxsw_sp, &ing_pool_count, &eg_pool_count);
 err = devlink_sb_register(priv_to_devlink(mlxsw_sp->core), 0,
      mlxsw_sp->sb->sb_size,
      ing_pool_count,
      eg_pool_count,
      MLXSW_SP_SB_ING_TC_COUNT,
      MLXSW_SP_SB_EG_TC_COUNT);
 if (err)
  goto err_devlink_sb_register;

 return 0;

err_devlink_sb_register:
err_sb_mms_init:
err_sb_cpu_port_pms_init:
err_sb_cpu_port_sb_cms_init:
err_sb_prs_init:
 mlxsw_sp_sb_ports_fini(mlxsw_sp);
err_sb_ports_init:
 kfree(mlxsw_sp->sb);
 return err;
}

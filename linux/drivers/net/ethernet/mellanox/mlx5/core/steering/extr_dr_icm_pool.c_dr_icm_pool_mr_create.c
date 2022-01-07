
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_icm_pool {int icm_mr_list; TYPE_2__* dmn; int icm_type; int max_log_chunk_sz; } ;
struct TYPE_3__ {int type; int length; size_t addr; int obj_id; } ;
struct mlx5dr_icm_mr {size_t icm_start_addr; size_t used_length; TYPE_1__ dm; int mr_list; int mkey; struct mlx5dr_icm_pool* pool; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_sw_icm_type { ____Placeholder_mlx5_sw_icm_type } mlx5_sw_icm_type ;
struct TYPE_4__ {int pdn; struct mlx5_core_dev* mdev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_MKC_ACCESS_MODE_SW_ICM ;
 int dr_icm_create_dm_mkey (struct mlx5_core_dev*,int ,int,size_t,int ,int *) ;
 int kvfree (struct mlx5dr_icm_mr*) ;
 struct mlx5dr_icm_mr* kvzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlx5_dm_sw_icm_alloc (struct mlx5_core_dev*,int,int,int ,size_t*,int *) ;
 int mlx5_dm_sw_icm_dealloc (struct mlx5_core_dev*,int,int,int ,size_t,int ) ;
 int mlx5dr_err (TYPE_2__*,char*,int) ;
 int mlx5dr_icm_pool_chunk_size_to_byte (int ,int ) ;

__attribute__((used)) static struct mlx5dr_icm_mr *
dr_icm_pool_mr_create(struct mlx5dr_icm_pool *pool,
        enum mlx5_sw_icm_type type,
        size_t align_base)
{
 struct mlx5_core_dev *mdev = pool->dmn->mdev;
 struct mlx5dr_icm_mr *icm_mr;
 size_t align_diff;
 int err;

 icm_mr = kvzalloc(sizeof(*icm_mr), GFP_KERNEL);
 if (!icm_mr)
  return ((void*)0);

 icm_mr->pool = pool;
 INIT_LIST_HEAD(&icm_mr->mr_list);

 icm_mr->dm.type = type;


 icm_mr->dm.length = mlx5dr_icm_pool_chunk_size_to_byte(pool->max_log_chunk_sz,
              pool->icm_type) * 2;

 err = mlx5_dm_sw_icm_alloc(mdev, icm_mr->dm.type, icm_mr->dm.length, 0,
       &icm_mr->dm.addr, &icm_mr->dm.obj_id);
 if (err) {
  mlx5dr_err(pool->dmn, "Failed to allocate SW ICM memory, err (%d)\n", err);
  goto free_icm_mr;
 }


 err = dr_icm_create_dm_mkey(mdev, pool->dmn->pdn,
        icm_mr->dm.length,
        icm_mr->dm.addr,
        MLX5_MKC_ACCESS_MODE_SW_ICM,
        &icm_mr->mkey);
 if (err) {
  mlx5dr_err(pool->dmn, "Failed to create SW ICM MKEY, err (%d)\n", err);
  goto free_dm;
 }

 icm_mr->icm_start_addr = icm_mr->dm.addr;


 align_diff = icm_mr->icm_start_addr & (align_base - 1);
 if (align_diff)
  icm_mr->used_length = align_base - align_diff;

 list_add_tail(&icm_mr->mr_list, &pool->icm_mr_list);

 return icm_mr;

free_dm:
 mlx5_dm_sw_icm_dealloc(mdev, icm_mr->dm.type, icm_mr->dm.length, 0,
          icm_mr->dm.addr, icm_mr->dm.obj_id);
free_icm_mr:
 kvfree(icm_mr);
 return ((void*)0);
}

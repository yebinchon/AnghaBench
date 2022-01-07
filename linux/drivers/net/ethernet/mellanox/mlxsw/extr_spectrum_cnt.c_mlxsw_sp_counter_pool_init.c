
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_counter_sub_pool {int size; int bank_count; unsigned int base_index; } ;
struct mlxsw_sp_counter_pool {unsigned int pool_size; struct mlxsw_sp_counter_sub_pool* sub_pools; void* usage; } ;
struct mlxsw_sp {struct mlxsw_sp_counter_pool* counter_pool; int core; } ;


 int ARRAY_SIZE (struct mlxsw_sp_counter_sub_pool*) ;
 int BITS_TO_LONGS (unsigned int) ;
 int COUNTER_POOL_SIZE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 int MLXSW_SP_COUNTER_POOL_BANK_SIZE ;
 int kfree (struct mlxsw_sp_counter_pool*) ;
 void* kzalloc (unsigned int,int ) ;
 int mlxsw_sp_counter_pool_validate (struct mlxsw_sp*) ;
 struct mlxsw_sp_counter_sub_pool* mlxsw_sp_counter_sub_pools ;
 int mlxsw_sp_counter_sub_pools_prepare (struct mlxsw_sp*) ;

int mlxsw_sp_counter_pool_init(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_counter_sub_pool *sub_pool;
 struct mlxsw_sp_counter_pool *pool;
 unsigned int base_index;
 unsigned int map_size;
 int i;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, COUNTER_POOL_SIZE))
  return -EIO;

 err = mlxsw_sp_counter_pool_validate(mlxsw_sp);
 if (err)
  return err;

 err = mlxsw_sp_counter_sub_pools_prepare(mlxsw_sp);
 if (err)
  return err;

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return -ENOMEM;

 pool->pool_size = MLXSW_CORE_RES_GET(mlxsw_sp->core, COUNTER_POOL_SIZE);
 map_size = BITS_TO_LONGS(pool->pool_size) * sizeof(unsigned long);

 pool->usage = kzalloc(map_size, GFP_KERNEL);
 if (!pool->usage) {
  err = -ENOMEM;
  goto err_usage_alloc;
 }

 pool->sub_pools = mlxsw_sp_counter_sub_pools;



 base_index = 0;
 for (i = 0; i < ARRAY_SIZE(mlxsw_sp_counter_sub_pools); i++) {
  sub_pool = &pool->sub_pools[i];
  sub_pool->size = sub_pool->bank_count *
     MLXSW_SP_COUNTER_POOL_BANK_SIZE;
  sub_pool->base_index = base_index;
  base_index += sub_pool->size;

  if (sub_pool->base_index + sub_pool->size > pool->pool_size)
   sub_pool->size = pool->pool_size - sub_pool->base_index;
 }

 mlxsw_sp->counter_pool = pool;
 return 0;

err_usage_alloc:
 kfree(pool);
 return err;
}

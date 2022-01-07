
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlxsw_sp_acl_tcam_ops {int (* init ) (struct mlxsw_sp*,int ,struct mlxsw_sp_acl_tcam*) ;} ;
struct mlxsw_sp_acl_tcam {void* used_regions; void* used_groups; int priv; void* max_group_size; scalar_t__ max_groups; scalar_t__ max_regions; int vregion_list; int vregion_rehash_intrvl; int lock; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int ACL_MAX_GROUPS ;
 int ACL_MAX_GROUP_SIZE ;
 int ACL_MAX_REGIONS ;
 int ACL_MAX_TCAM_REGIONS ;
 int BITS_TO_LONGS (scalar_t__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int stub1 (struct mlxsw_sp*,int ,struct mlxsw_sp_acl_tcam*) ;

int mlxsw_sp_acl_tcam_init(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_tcam *tcam)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
 u64 max_tcam_regions;
 u64 max_regions;
 u64 max_groups;
 size_t alloc_size;
 int err;

 mutex_init(&tcam->lock);
 tcam->vregion_rehash_intrvl =
   MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT;
 INIT_LIST_HEAD(&tcam->vregion_list);

 max_tcam_regions = MLXSW_CORE_RES_GET(mlxsw_sp->core,
           ACL_MAX_TCAM_REGIONS);
 max_regions = MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_REGIONS);


 if (max_tcam_regions < max_regions)
  max_regions = max_tcam_regions;

 alloc_size = sizeof(tcam->used_regions[0]) * BITS_TO_LONGS(max_regions);
 tcam->used_regions = kzalloc(alloc_size, GFP_KERNEL);
 if (!tcam->used_regions)
  return -ENOMEM;
 tcam->max_regions = max_regions;

 max_groups = MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_GROUPS);
 alloc_size = sizeof(tcam->used_groups[0]) * BITS_TO_LONGS(max_groups);
 tcam->used_groups = kzalloc(alloc_size, GFP_KERNEL);
 if (!tcam->used_groups) {
  err = -ENOMEM;
  goto err_alloc_used_groups;
 }
 tcam->max_groups = max_groups;
 tcam->max_group_size = MLXSW_CORE_RES_GET(mlxsw_sp->core,
       ACL_MAX_GROUP_SIZE);

 err = ops->init(mlxsw_sp, tcam->priv, tcam);
 if (err)
  goto err_tcam_init;

 return 0;

err_tcam_init:
 kfree(tcam->used_groups);
err_alloc_used_groups:
 kfree(tcam->used_regions);
 return err;
}

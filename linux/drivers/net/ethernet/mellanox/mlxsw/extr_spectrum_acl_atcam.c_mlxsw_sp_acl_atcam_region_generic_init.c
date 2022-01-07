
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct mlxsw_sp_acl_atcam_region_generic {TYPE_1__ dummy_lkey_id; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_generic* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlxsw_sp_acl_atcam_region_generic* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static int
mlxsw_sp_acl_atcam_region_generic_init(struct mlxsw_sp_acl_atcam_region *aregion)
{
 struct mlxsw_sp_acl_atcam_region_generic *region_generic;

 region_generic = kzalloc(sizeof(*region_generic), GFP_KERNEL);
 if (!region_generic)
  return -ENOMEM;

 refcount_set(&region_generic->dummy_lkey_id.refcnt, 1);
 aregion->priv = region_generic;

 return 0;
}

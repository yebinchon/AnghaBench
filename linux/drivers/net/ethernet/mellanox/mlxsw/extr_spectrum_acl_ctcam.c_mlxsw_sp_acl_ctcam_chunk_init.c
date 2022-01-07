
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ctcam_region {int parman; } ;
struct mlxsw_sp_acl_ctcam_chunk {int parman_prio; } ;


 int parman_prio_init (int ,int *,unsigned int) ;

void mlxsw_sp_acl_ctcam_chunk_init(struct mlxsw_sp_acl_ctcam_region *cregion,
       struct mlxsw_sp_acl_ctcam_chunk *cchunk,
       unsigned int priority)
{
 parman_prio_init(cregion->parman, &cchunk->parman_prio, priority);
}

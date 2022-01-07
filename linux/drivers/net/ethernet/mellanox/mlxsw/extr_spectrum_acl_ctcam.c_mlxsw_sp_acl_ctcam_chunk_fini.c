
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ctcam_chunk {int parman_prio; } ;


 int parman_prio_fini (int *) ;

void mlxsw_sp_acl_ctcam_chunk_fini(struct mlxsw_sp_acl_ctcam_chunk *cchunk)
{
 parman_prio_fini(&cchunk->parman_prio);
}

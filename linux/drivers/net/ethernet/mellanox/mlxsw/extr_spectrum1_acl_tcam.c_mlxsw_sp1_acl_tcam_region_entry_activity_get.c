
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int tcam_region_info; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE2_LEN ;
 int MLXSW_REG_PTCE2_OP_QUERY_CLEAR_ON_READ ;
 int mlxsw_reg_ptce2_a_get (char*) ;
 int mlxsw_reg_ptce2_pack (char*,int,int ,int ,unsigned int,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int ptce2 ;

__attribute__((used)) static int
mlxsw_sp1_acl_tcam_region_entry_activity_get(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_region *_region,
          unsigned int offset,
          bool *activity)
{
 char ptce2_pl[MLXSW_REG_PTCE2_LEN];
 int err;

 mlxsw_reg_ptce2_pack(ptce2_pl, 1, MLXSW_REG_PTCE2_OP_QUERY_CLEAR_ON_READ,
        _region->tcam_region_info, offset, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ptce2), ptce2_pl);
 if (err)
  return err;
 *activity = mlxsw_reg_ptce2_a_get(ptce2_pl);
 return 0;
}

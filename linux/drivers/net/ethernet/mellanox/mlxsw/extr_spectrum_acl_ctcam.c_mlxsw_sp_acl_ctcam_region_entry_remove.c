
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlxsw_sp_acl_ctcam_region {TYPE_3__* ops; TYPE_1__* region; } ;
struct TYPE_5__ {int index; } ;
struct mlxsw_sp_acl_ctcam_entry {TYPE_2__ parman_item; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_6__ {int (* entry_remove ) (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;} ;
struct TYPE_4__ {int tcam_region_info; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE2_LEN ;
 int MLXSW_REG_PTCE2_OP_WRITE_WRITE ;
 int mlxsw_reg_ptce2_pack (char*,int,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptce2 ;
 int stub1 (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;

__attribute__((used)) static void
mlxsw_sp_acl_ctcam_region_entry_remove(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_ctcam_region *cregion,
           struct mlxsw_sp_acl_ctcam_entry *centry)
{
 char ptce2_pl[MLXSW_REG_PTCE2_LEN];

 mlxsw_reg_ptce2_pack(ptce2_pl, 0, MLXSW_REG_PTCE2_OP_WRITE_WRITE,
        cregion->region->tcam_region_info,
        centry->parman_item.index, 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptce2), ptce2_pl);
 cregion->ops->entry_remove(cregion, centry);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; } ;
struct mlxsw_sp_acl_tcam_group {int id; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPBT_LEN ;
 int MLXSW_REG_PXBT_E_EACL ;
 int MLXSW_REG_PXBT_E_IACL ;
 int MLXSW_REG_PXBT_OP_BIND ;
 int mlxsw_reg_ppbt_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ppbt ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_group_bind(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_tcam_group *group,
        struct mlxsw_sp_port *mlxsw_sp_port,
        bool ingress)
{
 char ppbt_pl[MLXSW_REG_PPBT_LEN];

 mlxsw_reg_ppbt_pack(ppbt_pl, ingress ? MLXSW_REG_PXBT_E_IACL :
            MLXSW_REG_PXBT_E_EACL,
       MLXSW_REG_PXBT_OP_BIND, mlxsw_sp_port->local_port,
       group->id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ppbt), ppbt_pl);
}

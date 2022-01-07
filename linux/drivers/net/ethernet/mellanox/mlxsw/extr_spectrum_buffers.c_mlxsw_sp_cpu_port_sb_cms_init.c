
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int cms_cpu_count; int cms_cpu; } ;


 int MLXSW_REG_SBXX_DIR_EGRESS ;
 int __mlxsw_sp_sb_cms_init (struct mlxsw_sp*,int ,int ,int ,int ) ;

__attribute__((used)) static int mlxsw_sp_cpu_port_sb_cms_init(struct mlxsw_sp *mlxsw_sp)
{
 return __mlxsw_sp_sb_cms_init(mlxsw_sp, 0, MLXSW_REG_SBXX_DIR_EGRESS,
          mlxsw_sp->sb_vals->cms_cpu,
          mlxsw_sp->sb_vals->cms_cpu_count);
}

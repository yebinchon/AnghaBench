
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_sb_port {int pms; } ;


 int kfree (int ) ;

__attribute__((used)) static void mlxsw_sp_sb_port_fini(struct mlxsw_sp_sb_port *sb_port)
{
 kfree(sb_port->pms);
}

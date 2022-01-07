
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mid {struct mlxsw_sp_mid* ports_in_mid; int list; } ;
struct mlxsw_sp {int core; } ;


 scalar_t__ bitmap_empty (struct mlxsw_sp_mid*,int ) ;
 int clear_bit (int ,struct mlxsw_sp_mid*) ;
 int kfree (struct mlxsw_sp_mid*) ;
 int list_del (int *) ;
 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp_mc_remove_mdb_entry (struct mlxsw_sp*,struct mlxsw_sp_mid*) ;

__attribute__((used)) static int mlxsw_sp_port_remove_from_mid(struct mlxsw_sp_port *mlxsw_sp_port,
      struct mlxsw_sp_mid *mid)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 int err = 0;

 clear_bit(mlxsw_sp_port->local_port, mid->ports_in_mid);
 if (bitmap_empty(mid->ports_in_mid,
    mlxsw_core_max_ports(mlxsw_sp->core))) {
  err = mlxsw_sp_mc_remove_mdb_entry(mlxsw_sp, mid);
  list_del(&mid->list);
  kfree(mid->ports_in_mid);
  kfree(mid);
 }
 return err;
}

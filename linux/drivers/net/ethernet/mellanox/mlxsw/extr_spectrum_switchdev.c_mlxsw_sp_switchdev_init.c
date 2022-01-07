
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge {int * bridge_8021d_ops; int * bridge_8021q_ops; int bridges_list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_bridge* bridge; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_bridge* kzalloc (int,int ) ;
 int mlxsw_sp_bridge_8021d_ops ;
 int mlxsw_sp_bridge_8021q_ops ;
 int mlxsw_sp_fdb_init (struct mlxsw_sp*) ;

int mlxsw_sp_switchdev_init(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_bridge *bridge;

 bridge = kzalloc(sizeof(*mlxsw_sp->bridge), GFP_KERNEL);
 if (!bridge)
  return -ENOMEM;
 mlxsw_sp->bridge = bridge;
 bridge->mlxsw_sp = mlxsw_sp;

 INIT_LIST_HEAD(&mlxsw_sp->bridge->bridges_list);

 bridge->bridge_8021q_ops = &mlxsw_sp_bridge_8021q_ops;
 bridge->bridge_8021d_ops = &mlxsw_sp_bridge_8021d_ops;

 return mlxsw_sp_fdb_init(mlxsw_sp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_cls_matchall_offload {int dummy; } ;
struct mlxsw_sp_port {TYPE_2__* sample; int dev; } ;
struct TYPE_3__ {scalar_t__ rate; int trunc_size; int truncate; int psample_group; } ;
struct flow_action_entry {TYPE_1__ sample; } ;
struct TYPE_4__ {scalar_t__ rate; int psample_group; int trunc_size; int truncate; } ;


 int EEXIST ;
 int EOPNOTSUPP ;
 scalar_t__ MLXSW_REG_MPSC_RATE_MAX ;
 int RCU_INIT_POINTER (int ,int *) ;
 int mlxsw_sp_port_sample_set (struct mlxsw_sp_port*,int,scalar_t__) ;
 int netdev_err (int ,char*) ;
 int rcu_assign_pointer (int ,int ) ;
 scalar_t__ rtnl_dereference (int ) ;

__attribute__((used)) static int
mlxsw_sp_port_add_cls_matchall_sample(struct mlxsw_sp_port *mlxsw_sp_port,
          struct tc_cls_matchall_offload *cls,
          const struct flow_action_entry *act,
          bool ingress)
{
 int err;

 if (!mlxsw_sp_port->sample)
  return -EOPNOTSUPP;
 if (rtnl_dereference(mlxsw_sp_port->sample->psample_group)) {
  netdev_err(mlxsw_sp_port->dev, "sample already active\n");
  return -EEXIST;
 }
 if (act->sample.rate > MLXSW_REG_MPSC_RATE_MAX) {
  netdev_err(mlxsw_sp_port->dev, "sample rate not supported\n");
  return -EOPNOTSUPP;
 }

 rcu_assign_pointer(mlxsw_sp_port->sample->psample_group,
      act->sample.psample_group);
 mlxsw_sp_port->sample->truncate = act->sample.truncate;
 mlxsw_sp_port->sample->trunc_size = act->sample.trunc_size;
 mlxsw_sp_port->sample->rate = act->sample.rate;

 err = mlxsw_sp_port_sample_set(mlxsw_sp_port, 1, act->sample.rate);
 if (err)
  goto err_port_sample_set;
 return 0;

err_port_sample_set:
 RCU_INIT_POINTER(mlxsw_sp_port->sample->psample_group, ((void*)0));
 return err;
}

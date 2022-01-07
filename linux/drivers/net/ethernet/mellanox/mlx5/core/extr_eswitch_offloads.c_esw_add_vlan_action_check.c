
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eswitch_rep {scalar_t__ vport; scalar_t__ vlan; scalar_t__ vlan_refcount; } ;
struct mlx5_esw_flow_attr {scalar_t__* vlan_vid; TYPE_1__* dests; struct mlx5_eswitch_rep* in_rep; } ;
struct TYPE_2__ {struct mlx5_eswitch_rep* rep; } ;


 int EOPNOTSUPP ;
 scalar_t__ MLX5_VPORT_UPLINK ;

__attribute__((used)) static int esw_add_vlan_action_check(struct mlx5_esw_flow_attr *attr,
         bool push, bool pop, bool fwd)
{
 struct mlx5_eswitch_rep *in_rep, *out_rep;

 if ((push || pop) && !fwd)
  goto out_notsupp;

 in_rep = attr->in_rep;
 out_rep = attr->dests[0].rep;

 if (push && in_rep->vport == MLX5_VPORT_UPLINK)
  goto out_notsupp;

 if (pop && out_rep->vport == MLX5_VPORT_UPLINK)
  goto out_notsupp;


 if (!push && !pop && fwd)
  if (in_rep->vlan && out_rep->vport == MLX5_VPORT_UPLINK)
   goto out_notsupp;




 if (push && in_rep->vlan_refcount && (in_rep->vlan != attr->vlan_vid[0]))
  goto out_notsupp;

 return 0;

out_notsupp:
 return -EOPNOTSUPP;
}

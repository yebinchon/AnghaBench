
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_esw_flow_attr {TYPE_1__* dests; struct mlx5_eswitch_rep* in_rep; } ;
struct TYPE_2__ {struct mlx5_eswitch_rep* rep; } ;



__attribute__((used)) static struct mlx5_eswitch_rep *
esw_vlan_action_get_vport(struct mlx5_esw_flow_attr *attr, bool push, bool pop)
{
 struct mlx5_eswitch_rep *in_rep, *out_rep, *vport = ((void*)0);

 in_rep = attr->in_rep;
 out_rep = attr->dests[0].rep;

 if (push)
  vport = in_rep;
 else if (pop)
  vport = out_rep;
 else
  vport = in_rep;

 return vport;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_steering {TYPE_1__** esw_egress_root_ns; } ;
struct fs_prio {int dummy; } ;
struct TYPE_2__ {int ns; } ;


 int ENOMEM ;
 int FS_FT_ESW_EGRESS_ACL ;
 int PTR_ERR_OR_ZERO (struct fs_prio*) ;
 TYPE_1__* create_root_ns (struct mlx5_flow_steering*,int ) ;
 struct fs_prio* fs_create_prio (int *,int ,int) ;

__attribute__((used)) static int init_egress_acl_root_ns(struct mlx5_flow_steering *steering, int vport)
{
 struct fs_prio *prio;

 steering->esw_egress_root_ns[vport] = create_root_ns(steering, FS_FT_ESW_EGRESS_ACL);
 if (!steering->esw_egress_root_ns[vport])
  return -ENOMEM;


 prio = fs_create_prio(&steering->esw_egress_root_ns[vport]->ns, 0, 1);
 return PTR_ERR_OR_ZERO(prio);
}

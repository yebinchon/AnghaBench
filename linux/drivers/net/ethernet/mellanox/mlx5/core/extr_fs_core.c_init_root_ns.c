
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_flow_steering {TYPE_2__* root_ns; } ;
struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ ns; } ;


 int ENOMEM ;
 int FS_FT_NIC_RX ;
 int cleanup_root_ns (TYPE_2__*) ;
 int create_anchor_flow_table (struct mlx5_flow_steering*) ;
 TYPE_2__* create_root_ns (struct mlx5_flow_steering*,int ) ;
 int init_root_tree (struct mlx5_flow_steering*,int *,int *) ;
 int root_fs ;
 int set_prio_attrs (TYPE_2__*) ;

__attribute__((used)) static int init_root_ns(struct mlx5_flow_steering *steering)
{
 int err;

 steering->root_ns = create_root_ns(steering, FS_FT_NIC_RX);
 if (!steering->root_ns)
  return -ENOMEM;

 err = init_root_tree(steering, &root_fs, &steering->root_ns->ns.node);
 if (err)
  goto out_err;

 set_prio_attrs(steering->root_ns);
 err = create_anchor_flow_table(steering);
 if (err)
  goto out_err;

 return 0;

out_err:
 cleanup_root_ns(steering->root_ns);
 steering->root_ns = ((void*)0);
 return err;
}

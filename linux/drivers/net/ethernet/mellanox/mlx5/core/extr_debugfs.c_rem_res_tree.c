
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_rsc_debug {int root; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (struct mlx5_rsc_debug*) ;

__attribute__((used)) static void rem_res_tree(struct mlx5_rsc_debug *d)
{
 debugfs_remove_recursive(d->root);
 kfree(d);
}

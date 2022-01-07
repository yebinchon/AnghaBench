
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int refcount; } ;
struct mlx5_flow_handle {struct mlx5_flow_handle** rule; TYPE_1__ node; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {int dests_size; } ;


 int kfree (struct mlx5_flow_handle*) ;
 int list_del (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void destroy_flow_handle(struct fs_fte *fte,
    struct mlx5_flow_handle *handle,
    struct mlx5_flow_destination *dest,
    int i)
{
 for (; --i >= 0;) {
  if (refcount_dec_and_test(&handle->rule[i]->node.refcount)) {
   fte->dests_size--;
   list_del(&handle->rule[i]->node.list);
   kfree(handle->rule[i]);
  }
 }
 kfree(handle);
}

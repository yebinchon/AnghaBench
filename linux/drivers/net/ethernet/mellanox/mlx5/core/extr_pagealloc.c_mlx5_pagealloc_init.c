
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg_wq; int free_list; int page_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int create_singlethread_workqueue (char*) ;

int mlx5_pagealloc_init(struct mlx5_core_dev *dev)
{
 dev->priv.page_root = RB_ROOT;
 INIT_LIST_HEAD(&dev->priv.free_list);
 dev->priv.pg_wq = create_singlethread_workqueue("mlx5_page_allocator");
 if (!dev->priv.pg_wq)
  return -ENOMEM;

 return 0;
}

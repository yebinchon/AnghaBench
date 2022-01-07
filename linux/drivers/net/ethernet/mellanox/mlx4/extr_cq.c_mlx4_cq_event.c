
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int tree; } ;
struct mlx4_cq {int (* event ) (struct mlx4_cq*,int) ;} ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;


 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 struct mlx4_cq* radix_tree_lookup (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct mlx4_cq*,int) ;

void mlx4_cq_event(struct mlx4_dev *dev, u32 cqn, int event_type)
{
 struct mlx4_cq_table *cq_table = &mlx4_priv(dev)->cq_table;
 struct mlx4_cq *cq;

 rcu_read_lock();
 cq = radix_tree_lookup(&cq_table->tree, cqn & (dev->caps.num_cqs - 1));
 rcu_read_unlock();

 if (!cq) {
  mlx4_dbg(dev, "Async event for bogus CQ %08x\n", cqn);
  return;
 }




 cq->event(cq, event_type);
}

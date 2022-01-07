
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_srq_table {int tree; } ;
struct mlx4_srq {int free; int refcount; int (* event ) (struct mlx4_srq*,int) ;} ;
struct TYPE_3__ {int num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;


 int complete (int *) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 struct mlx4_srq* radix_tree_lookup (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_inc (int *) ;
 int stub1 (struct mlx4_srq*,int) ;

void mlx4_srq_event(struct mlx4_dev *dev, u32 srqn, int event_type)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 struct mlx4_srq *srq;

 rcu_read_lock();
 srq = radix_tree_lookup(&srq_table->tree, srqn & (dev->caps.num_srqs - 1));
 rcu_read_unlock();
 if (srq)
  refcount_inc(&srq->refcount);
 else {
  mlx4_warn(dev, "Async event for bogus SRQ %08x\n", srqn);
  return;
 }

 srq->event(srq, event_type);

 if (refcount_dec_and_test(&srq->refcount))
  complete(&srq->free);
}

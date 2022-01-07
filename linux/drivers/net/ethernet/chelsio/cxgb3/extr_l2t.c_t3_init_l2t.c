
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2t_data {unsigned int nentries; TYPE_1__* l2tab; int lock; int nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int refcnt; int lock; int arpq; int state; } ;


 int GFP_KERNEL ;
 int L2T_STATE_UNUSED ;
 int __skb_queue_head_init (int *) ;
 int atomic_set (int *,unsigned int) ;
 struct l2t_data* kvzalloc (int ,int ) ;
 int l2tab ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 int struct_size (struct l2t_data*,int ,unsigned int) ;

struct l2t_data *t3_init_l2t(unsigned int l2t_capacity)
{
 struct l2t_data *d;
 int i;

 d = kvzalloc(struct_size(d, l2tab, l2t_capacity), GFP_KERNEL);
 if (!d)
  return ((void*)0);

 d->nentries = l2t_capacity;
 d->rover = &d->l2tab[1];
 atomic_set(&d->nfree, l2t_capacity - 1);
 rwlock_init(&d->lock);

 for (i = 0; i < l2t_capacity; ++i) {
  d->l2tab[i].idx = i;
  d->l2tab[i].state = L2T_STATE_UNUSED;
  __skb_queue_head_init(&d->l2tab[i].arpq);
  spin_lock_init(&d->l2tab[i].lock);
  atomic_set(&d->l2tab[i].refcnt, 0);
 }
 return d;
}

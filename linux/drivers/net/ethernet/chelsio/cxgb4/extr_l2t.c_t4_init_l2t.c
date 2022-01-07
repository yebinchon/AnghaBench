
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2t_data {unsigned int l2t_start; unsigned int l2t_size; TYPE_1__* l2tab; int lock; int nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int arpq; int refcnt; int lock; int state; } ;


 int GFP_KERNEL ;
 unsigned int L2T_MIN_HASH_BUCKETS ;
 unsigned int L2T_SIZE ;
 int L2T_STATE_UNUSED ;
 int atomic_set (int *,unsigned int) ;
 struct l2t_data* kvzalloc (int ,int ) ;
 int l2tab ;
 int rwlock_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int struct_size (struct l2t_data*,int ,unsigned int) ;

struct l2t_data *t4_init_l2t(unsigned int l2t_start, unsigned int l2t_end)
{
 unsigned int l2t_size;
 int i;
 struct l2t_data *d;

 if (l2t_start >= l2t_end || l2t_end >= L2T_SIZE)
  return ((void*)0);
 l2t_size = l2t_end - l2t_start + 1;
 if (l2t_size < L2T_MIN_HASH_BUCKETS)
  return ((void*)0);

 d = kvzalloc(struct_size(d, l2tab, l2t_size), GFP_KERNEL);
 if (!d)
  return ((void*)0);

 d->l2t_start = l2t_start;
 d->l2t_size = l2t_size;

 d->rover = d->l2tab;
 atomic_set(&d->nfree, l2t_size);
 rwlock_init(&d->lock);

 for (i = 0; i < d->l2t_size; ++i) {
  d->l2tab[i].idx = i;
  d->l2tab[i].state = L2T_STATE_UNUSED;
  spin_lock_init(&d->l2tab[i].lock);
  atomic_set(&d->l2tab[i].refcnt, 0);
  skb_queue_head_init(&d->l2tab[i].arpq);
 }
 return d;
}

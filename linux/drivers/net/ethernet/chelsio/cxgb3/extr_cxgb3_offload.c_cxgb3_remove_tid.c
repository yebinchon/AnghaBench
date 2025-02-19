
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tid_info {unsigned int ntids; int tids_in_use; TYPE_1__* tid_tab; } ;
struct t3cdev {scalar_t__ type; } ;
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;
struct TYPE_3__ {int * ctx; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 scalar_t__ T3A ;
 TYPE_2__* T3C_DATA (struct t3cdev*) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atomic_dec (int *) ;
 int cmpxchg (int **,void*,int *) ;
 int cxgb3_ofld_send (struct t3cdev*,struct sk_buff*) ;
 int cxgb3_queue_tid_release (struct t3cdev*,unsigned int) ;
 scalar_t__ likely (struct sk_buff*) ;
 int mk_tid_release (struct sk_buff*,unsigned int) ;

void cxgb3_remove_tid(struct t3cdev *tdev, void *ctx, unsigned int tid)
{
 struct tid_info *t = &(T3C_DATA(tdev))->tid_maps;

 BUG_ON(tid >= t->ntids);
 if (tdev->type == T3A)
  (void)cmpxchg(&t->tid_tab[tid].ctx, ctx, ((void*)0));
 else {
  struct sk_buff *skb;

  skb = alloc_skb(sizeof(struct cpl_tid_release), GFP_ATOMIC);
  if (likely(skb)) {
   mk_tid_release(skb, tid);
   cxgb3_ofld_send(tdev, skb);
   t->tid_tab[tid].ctx = ((void*)0);
  } else
   cxgb3_queue_tid_release(tdev, tid);
 }
 atomic_dec(&t->tids_in_use);
}

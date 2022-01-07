
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_deferred_work {int list; } ;
struct ionic_deferred {int work; int lock; int list; } ;


 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ionic_lif_deferred_enqueue(struct ionic_deferred *def,
           struct ionic_deferred_work *work)
{
 spin_lock_bh(&def->lock);
 list_add_tail(&work->list, &def->list);
 spin_unlock_bh(&def->lock);
 schedule_work(&def->work);
}

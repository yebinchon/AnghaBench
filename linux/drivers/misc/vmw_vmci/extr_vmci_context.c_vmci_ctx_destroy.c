
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_ctx {int list_item; } ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__ ctx_list ;
 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 int vmci_ctx_put (struct vmci_ctx*) ;

void vmci_ctx_destroy(struct vmci_ctx *context)
{
 spin_lock(&ctx_list.lock);
 list_del_rcu(&context->list_item);
 spin_unlock(&ctx_list.lock);
 synchronize_rcu();

 vmci_ctx_put(context);
}

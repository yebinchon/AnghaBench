
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_calls {scalar_t__ owner; } ;
struct TYPE_3__ {scalar_t__ owner; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (TYPE_1__*,int *) ;
 TYPE_1__* cxl_calls ;
 int synchronize_rcu () ;

void unregister_cxl_calls(struct cxl_calls *calls)
{
 BUG_ON(cxl_calls->owner != calls->owner);
 RCU_INIT_POINTER(cxl_calls, ((void*)0));
 synchronize_rcu();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdp_ctx {int rcu_head; int hlist_addr; int hlist_tid; } ;


 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int pdp_context_free ;

__attribute__((used)) static void pdp_context_delete(struct pdp_ctx *pctx)
{
 hlist_del_rcu(&pctx->hlist_tid);
 hlist_del_rcu(&pctx->hlist_addr);
 call_rcu(&pctx->rcu_head, pdp_context_free);
}

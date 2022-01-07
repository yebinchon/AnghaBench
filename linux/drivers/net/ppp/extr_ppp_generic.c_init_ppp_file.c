
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_file {int kind; int rwait; int refcnt; int rq; int xq; } ;


 int init_waitqueue_head (int *) ;
 int refcount_set (int *,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void
init_ppp_file(struct ppp_file *pf, int kind)
{
 pf->kind = kind;
 skb_queue_head_init(&pf->xq);
 skb_queue_head_init(&pf->rq);
 refcount_set(&pf->refcnt, 1);
 init_waitqueue_head(&pf->rwait);
}

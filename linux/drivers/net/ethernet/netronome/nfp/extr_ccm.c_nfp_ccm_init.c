
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_ccm {int wq; int replies; struct nfp_app* app; } ;
struct nfp_app {int dummy; } ;


 int init_waitqueue_head (int *) ;
 int skb_queue_head_init (int *) ;

int nfp_ccm_init(struct nfp_ccm *ccm, struct nfp_app *app)
{
 ccm->app = app;
 skb_queue_head_init(&ccm->replies);
 init_waitqueue_head(&ccm->wq);
 return 0;
}

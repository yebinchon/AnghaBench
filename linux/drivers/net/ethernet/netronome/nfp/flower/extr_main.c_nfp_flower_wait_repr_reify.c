
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_flower_priv {int reify_wait_queue; } ;
struct nfp_app {int cpp; TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
typedef int atomic_t ;
struct TYPE_2__ {int lock; } ;


 int EIO ;
 int NFP_FL_REPLY_TIMEOUT ;
 int atomic_read (int *) ;
 int lockdep_assert_held (int *) ;
 int nfp_warn (int ,char*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int
nfp_flower_wait_repr_reify(struct nfp_app *app, atomic_t *replies, int tot_repl)
{
 struct nfp_flower_priv *priv = app->priv;

 if (!tot_repl)
  return 0;

 lockdep_assert_held(&app->pf->lock);
 if (!wait_event_timeout(priv->reify_wait_queue,
    atomic_read(replies) >= tot_repl,
    NFP_FL_REPLY_TIMEOUT)) {
  nfp_warn(app->cpp, "Not all reprs responded to reify\n");
  return -EIO;
 }

 return 0;
}

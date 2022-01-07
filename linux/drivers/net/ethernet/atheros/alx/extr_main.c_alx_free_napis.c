
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int num_napi; struct alx_napi** qnapi; } ;
struct alx_napi {struct alx_napi* rxq; struct alx_napi* txq; int napi; } ;


 int kfree (struct alx_napi*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void alx_free_napis(struct alx_priv *alx)
{
 struct alx_napi *np;
 int i;

 for (i = 0; i < alx->num_napi; i++) {
  np = alx->qnapi[i];
  if (!np)
   continue;

  netif_napi_del(&np->napi);
  kfree(np->txq);
  kfree(np->rxq);
  kfree(np);
  alx->qnapi[i] = ((void*)0);
 }
}

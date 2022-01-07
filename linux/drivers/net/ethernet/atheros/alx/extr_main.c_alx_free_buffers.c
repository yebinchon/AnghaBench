
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_priv {int num_txq; TYPE_1__** qnapi; } ;
struct TYPE_2__ {scalar_t__ rxq; scalar_t__ txq; } ;


 int alx_free_rxring_buf (scalar_t__) ;
 int alx_free_txring_buf (scalar_t__) ;

__attribute__((used)) static void alx_free_buffers(struct alx_priv *alx)
{
 int i;

 for (i = 0; i < alx->num_txq; i++)
  if (alx->qnapi[i] && alx->qnapi[i]->txq)
   alx_free_txring_buf(alx->qnapi[i]->txq);

 if (alx->qnapi[0] && alx->qnapi[0]->rxq)
  alx_free_rxring_buf(alx->qnapi[0]->rxq);
}

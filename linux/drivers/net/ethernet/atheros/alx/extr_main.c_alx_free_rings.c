
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int dma; scalar_t__ virt; int size; } ;
struct TYPE_11__ {TYPE_4__* pdev; } ;
struct alx_priv {int num_txq; TYPE_6__ descmem; TYPE_5__ hw; TYPE_3__** qnapi; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {TYPE_2__* rxq; TYPE_1__* txq; } ;
struct TYPE_8__ {int bufs; } ;
struct TYPE_7__ {int bufs; } ;


 int alx_free_buffers (struct alx_priv*) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void alx_free_rings(struct alx_priv *alx)
{
 int i;

 alx_free_buffers(alx);

 for (i = 0; i < alx->num_txq; i++)
  if (alx->qnapi[i] && alx->qnapi[i]->txq)
   kfree(alx->qnapi[i]->txq->bufs);

 if (alx->qnapi[0] && alx->qnapi[0]->rxq)
  kfree(alx->qnapi[0]->rxq->bufs);

 if (alx->descmem.virt)
  dma_free_coherent(&alx->hw.pdev->dev,
      alx->descmem.size,
      alx->descmem.virt,
      alx->descmem.dma);
}

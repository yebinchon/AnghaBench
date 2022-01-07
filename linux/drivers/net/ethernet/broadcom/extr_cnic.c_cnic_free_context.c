
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cnic_local {int ctx_blks; TYPE_2__* ctx_arr; int ctx_blk_size; } ;
struct cnic_dev {TYPE_1__* pcidev; struct cnic_local* cnic_priv; } ;
struct TYPE_4__ {int * ctx; int mapping; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void cnic_free_context(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int i;

 for (i = 0; i < cp->ctx_blks; i++) {
  if (cp->ctx_arr[i].ctx) {
   dma_free_coherent(&dev->pcidev->dev, cp->ctx_blk_size,
       cp->ctx_arr[i].ctx,
       cp->ctx_arr[i].mapping);
   cp->ctx_arr[i].ctx = ((void*)0);
  }
 }
}

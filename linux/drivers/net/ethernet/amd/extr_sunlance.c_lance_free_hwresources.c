
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int * resource; } ;
struct lance_private {int init_block_dvma; scalar_t__ init_block_mem; TYPE_2__* op; scalar_t__ init_block_iomem; TYPE_1__* lebuffer; scalar_t__ dregs; struct platform_device* ledma; scalar_t__ lregs; } ;
struct lance_init_block {int dummy; } ;
struct TYPE_4__ {int dev; int * resource; } ;
struct TYPE_3__ {int * resource; } ;


 int LANCE_REG_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int of_iounmap (int *,scalar_t__,int) ;
 int resource_size (int *) ;

__attribute__((used)) static void lance_free_hwresources(struct lance_private *lp)
{
 if (lp->lregs)
  of_iounmap(&lp->op->resource[0], lp->lregs, LANCE_REG_SIZE);
 if (lp->dregs) {
  struct platform_device *ledma = lp->ledma;

  of_iounmap(&ledma->resource[0], lp->dregs,
      resource_size(&ledma->resource[0]));
 }
 if (lp->init_block_iomem) {
  of_iounmap(&lp->lebuffer->resource[0], lp->init_block_iomem,
      sizeof(struct lance_init_block));
 } else if (lp->init_block_mem) {
  dma_free_coherent(&lp->op->dev,
      sizeof(struct lance_init_block),
      lp->init_block_mem,
      lp->init_block_dvma);
 }
}

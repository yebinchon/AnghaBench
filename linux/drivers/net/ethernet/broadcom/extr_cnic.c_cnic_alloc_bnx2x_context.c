
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cnic_local {int max_cid_space; int ctx_blks; int ctx_blk_size; int ctx_align; int cids_per_blk; TYPE_3__* ctx_arr; TYPE_1__* ethdev; } ;
struct cnic_dev {TYPE_2__* pcidev; int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_ctx {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int mapping; int * ctx; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int ctx_blk_size; int ctx_tbl_len; } ;


 int BNX2X_CONTEXT_MEM_SIZE ;
 int CHIP_IS_E1 (struct bnx2x*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cnic_free_context (struct cnic_dev*) ;
 int * dma_alloc_coherent (int *,int,int*,int ) ;
 TYPE_3__* kcalloc (int,int,int ) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_alloc_bnx2x_context(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 int ctx_blk_size = cp->ethdev->ctx_blk_size;
 int total_mem, blks, i;

 total_mem = BNX2X_CONTEXT_MEM_SIZE * cp->max_cid_space;
 blks = total_mem / ctx_blk_size;
 if (total_mem % ctx_blk_size)
  blks++;

 if (blks > cp->ethdev->ctx_tbl_len)
  return -ENOMEM;

 cp->ctx_arr = kcalloc(blks, sizeof(struct cnic_ctx), GFP_KERNEL);
 if (cp->ctx_arr == ((void*)0))
  return -ENOMEM;

 cp->ctx_blks = blks;
 cp->ctx_blk_size = ctx_blk_size;
 if (!CHIP_IS_E1(bp))
  cp->ctx_align = 0;
 else
  cp->ctx_align = ctx_blk_size;

 cp->cids_per_blk = ctx_blk_size / BNX2X_CONTEXT_MEM_SIZE;

 for (i = 0; i < blks; i++) {
  cp->ctx_arr[i].ctx =
   dma_alloc_coherent(&dev->pcidev->dev, cp->ctx_blk_size,
        &cp->ctx_arr[i].mapping,
        GFP_KERNEL);
  if (cp->ctx_arr[i].ctx == ((void*)0))
   return -ENOMEM;

  if (cp->ctx_align && cp->ctx_blk_size == ctx_blk_size) {
   if (cp->ctx_arr[i].mapping & (cp->ctx_align - 1)) {
    cnic_free_context(dev);
    cp->ctx_blk_size += cp->ctx_align;
    i = -1;
    continue;
   }
  }
 }
 return 0;
}

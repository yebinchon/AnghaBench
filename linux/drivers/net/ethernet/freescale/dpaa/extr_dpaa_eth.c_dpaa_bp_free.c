
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {size_t bpid; int pool; scalar_t__ free_buf_cb; int refs; } ;


 int bman_free_pool (int ) ;
 int ** dpaa_bp_array ;
 int dpaa_bp_drain (struct dpaa_bp*) ;
 struct dpaa_bp* dpaa_bpid2pool (size_t) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void dpaa_bp_free(struct dpaa_bp *dpaa_bp)
{
 struct dpaa_bp *bp = dpaa_bpid2pool(dpaa_bp->bpid);





 if (!bp)
  return;

 if (!refcount_dec_and_test(&bp->refs))
  return;

 if (bp->free_buf_cb)
  dpaa_bp_drain(bp);

 dpaa_bp_array[bp->bpid] = ((void*)0);
 bman_free_pool(bp->pool);
}

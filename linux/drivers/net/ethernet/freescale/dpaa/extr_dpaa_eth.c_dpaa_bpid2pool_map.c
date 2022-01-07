
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {int refs; } ;


 struct dpaa_bp** dpaa_bp_array ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void dpaa_bpid2pool_map(int bpid, struct dpaa_bp *dpaa_bp)
{
 dpaa_bp_array[bpid] = dpaa_bp;
 refcount_set(&dpaa_bp->refs, 1);
}

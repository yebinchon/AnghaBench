
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refs; } ;


 TYPE_1__** dpaa_bp_array ;
 scalar_t__ dpaa_bpid2pool (int) ;
 int refcount_inc (int *) ;

__attribute__((used)) static bool dpaa_bpid2pool_use(int bpid)
{
 if (dpaa_bpid2pool(bpid)) {
  refcount_inc(&dpaa_bp_array[bpid]->refs);
  return 1;
 }

 return 0;
}

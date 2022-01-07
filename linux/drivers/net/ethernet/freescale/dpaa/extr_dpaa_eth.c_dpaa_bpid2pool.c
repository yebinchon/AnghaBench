
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {int dummy; } ;


 int BM_MAX_NUM_OF_POOLS ;
 scalar_t__ WARN_ON (int) ;
 struct dpaa_bp** dpaa_bp_array ;

__attribute__((used)) static struct dpaa_bp *dpaa_bpid2pool(int bpid)
{
 if (WARN_ON(bpid < 0 || bpid >= BM_MAX_NUM_OF_POOLS))
  return ((void*)0);

 return dpaa_bp_array[bpid];
}

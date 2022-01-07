
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_stat_ctxs; } ;
struct bnxt {TYPE_1__ hw_resc; } ;



unsigned int bnxt_get_max_func_stat_ctxs(struct bnxt *bp)
{
 return bp->hw_resc.max_stat_ctxs;
}

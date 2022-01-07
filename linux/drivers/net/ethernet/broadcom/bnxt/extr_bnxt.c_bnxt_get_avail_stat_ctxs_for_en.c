
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 unsigned int bnxt_get_func_stat_ctxs (struct bnxt*) ;
 unsigned int bnxt_get_max_func_stat_ctxs (struct bnxt*) ;

unsigned int bnxt_get_avail_stat_ctxs_for_en(struct bnxt *bp)
{
 return bnxt_get_max_func_stat_ctxs(bp) - bnxt_get_func_stat_ctxs(bp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int bnxt_free_mem (struct bnxt*,int) ;
 int bnxt_free_skbs (struct bnxt*) ;
 int bnxt_hwrm_resource_free (struct bnxt*,int,int) ;

void bnxt_half_close_nic(struct bnxt *bp)
{
 bnxt_hwrm_resource_free(bp, 0, 0);
 bnxt_free_skbs(bp);
 bnxt_free_mem(bp, 0);
}

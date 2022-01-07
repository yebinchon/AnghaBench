
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int * ctx; } ;


 int __bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_clear_int_mode (struct bnxt*) ;
 int bnxt_free_ctx_mem (struct bnxt*) ;
 int bnxt_hwrm_func_drv_unrgtr (struct bnxt*) ;
 int bnxt_ulp_irq_stop (struct bnxt*) ;
 int kfree (int *) ;

__attribute__((used)) static void bnxt_fw_reset_close(struct bnxt *bp)
{
 __bnxt_close_nic(bp, 1, 0);
 bnxt_ulp_irq_stop(bp);
 bnxt_clear_int_mode(bp);
 bnxt_hwrm_func_drv_unrgtr(bp);
 bnxt_free_ctx_mem(bp);
 kfree(bp->ctx);
 bp->ctx = ((void*)0);
}

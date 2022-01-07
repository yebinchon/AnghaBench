
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int bnxt_hwrm_resource_free (struct bnxt*,int,int) ;

__attribute__((used)) static int bnxt_shutdown_nic(struct bnxt *bp, bool irq_re_init)
{
 bnxt_hwrm_resource_free(bp, 1, irq_re_init);
 return 0;
}

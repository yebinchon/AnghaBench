
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; } ;


 int BNXT_FLAG_USING_MSIX ;
 int bnxt_set_real_num_queues (struct bnxt*) ;
 int bnxt_setup_inta (struct bnxt*) ;
 int bnxt_setup_msix (struct bnxt*) ;

__attribute__((used)) static int bnxt_setup_int_mode(struct bnxt *bp)
{
 int rc;

 if (bp->flags & BNXT_FLAG_USING_MSIX)
  bnxt_setup_msix(bp);
 else
  bnxt_setup_inta(bp);

 rc = bnxt_set_real_num_queues(bp);
 return rc;
}

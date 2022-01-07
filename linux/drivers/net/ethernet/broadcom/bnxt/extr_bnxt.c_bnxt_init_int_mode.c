
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; } ;


 int BNXT_FLAG_MSIX_CAP ;
 int BNXT_FLAG_USING_MSIX ;
 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_init_inta (struct bnxt*) ;
 int bnxt_init_msix (struct bnxt*) ;

__attribute__((used)) static int bnxt_init_int_mode(struct bnxt *bp)
{
 int rc = 0;

 if (bp->flags & BNXT_FLAG_MSIX_CAP)
  rc = bnxt_init_msix(bp);

 if (!(bp->flags & BNXT_FLAG_USING_MSIX) && BNXT_PF(bp)) {

  rc = bnxt_init_inta(bp);
 }
 return rc;
}

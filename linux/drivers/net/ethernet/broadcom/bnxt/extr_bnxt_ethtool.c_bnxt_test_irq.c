
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bnxt {int cp_nr_rings; TYPE_1__* grp_info; } ;
struct TYPE_2__ {int cp_fw_ring_id; } ;


 int bnxt_hwrm_selftest_irq (struct bnxt*,int ) ;

__attribute__((used)) static int bnxt_test_irq(struct bnxt *bp)
{
 int i;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  u16 cmpl_ring = bp->grp_info[i].cp_fw_ring_id;
  int rc;

  rc = bnxt_hwrm_selftest_irq(bp, cmpl_ring);
  if (rc)
   return rc;
 }
 return 0;
}

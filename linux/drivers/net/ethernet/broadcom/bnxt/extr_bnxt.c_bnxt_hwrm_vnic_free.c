
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnxt {scalar_t__ nr_vnics; } ;


 int bnxt_hwrm_vnic_free_one (struct bnxt*,scalar_t__) ;

__attribute__((used)) static void bnxt_hwrm_vnic_free(struct bnxt *bp)
{
 u16 i;

 for (i = 0; i < bp->nr_vnics; i++)
  bnxt_hwrm_vnic_free_one(bp, i);
}

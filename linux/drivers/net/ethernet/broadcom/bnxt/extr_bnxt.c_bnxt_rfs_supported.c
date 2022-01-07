
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; int fw_cap; } ;


 int BNXT_CHIP_TYPE_NITRO_A0 (struct bnxt*) ;
 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_NEW_RSS_CAP ;
 int BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX ;
 scalar_t__ BNXT_PF (struct bnxt*) ;

__attribute__((used)) static bool bnxt_rfs_supported(struct bnxt *bp)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5) {
  if (bp->fw_cap & BNXT_FW_CAP_CFA_RFS_RING_TBL_IDX)
   return 1;
  return 0;
 }
 if (BNXT_PF(bp) && !BNXT_CHIP_TYPE_NITRO_A0(bp))
  return 1;
 if (bp->flags & BNXT_FLAG_NEW_RSS_CAP)
  return 1;
 return 0;
}

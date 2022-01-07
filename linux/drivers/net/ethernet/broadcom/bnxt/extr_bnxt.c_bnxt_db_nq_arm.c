
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_db_info {int dummy; } ;
struct bnxt {int flags; } ;


 int BNXT_DB_CQ_ARM (struct bnxt_db_info*,int ) ;
 int BNXT_DB_NQ_ARM_P5 (struct bnxt_db_info*,int ) ;
 int BNXT_FLAG_CHIP_P5 ;

__attribute__((used)) static void bnxt_db_nq_arm(struct bnxt *bp, struct bnxt_db_info *db, u32 idx)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5)
  BNXT_DB_NQ_ARM_P5(db, idx);
 else
  BNXT_DB_CQ_ARM(db, idx);
}

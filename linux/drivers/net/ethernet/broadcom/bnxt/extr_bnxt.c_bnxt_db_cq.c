
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_db_info {int db_key64; int doorbell; } ;
struct bnxt {int flags; } ;


 int BNXT_DB_CQ (struct bnxt_db_info*,int ) ;
 int BNXT_FLAG_CHIP_P5 ;
 int DBR_TYPE_CQ_ARMALL ;
 int RING_CMP (int ) ;
 int writeq (int,int ) ;

__attribute__((used)) static void bnxt_db_cq(struct bnxt *bp, struct bnxt_db_info *db, u32 idx)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5)
  writeq(db->db_key64 | DBR_TYPE_CQ_ARMALL | RING_CMP(idx),
         db->doorbell);
 else
  BNXT_DB_CQ(db, idx);
}

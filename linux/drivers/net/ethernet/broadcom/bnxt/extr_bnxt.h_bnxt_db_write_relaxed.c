
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt_db_info {int db_key64; int db_key32; int doorbell; } ;
struct bnxt {int flags; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_DOUBLE_DB ;
 int writel_relaxed (int,int ) ;
 int writeq_relaxed (int,int ) ;

__attribute__((used)) static inline void bnxt_db_write_relaxed(struct bnxt *bp,
      struct bnxt_db_info *db, u32 idx)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5) {
  writeq_relaxed(db->db_key64 | idx, db->doorbell);
 } else {
  u32 db_val = db->db_key32 | idx;

  writel_relaxed(db_val, db->doorbell);
  if (bp->flags & BNXT_FLAG_DOUBLE_DB)
   writel_relaxed(db_val, db->doorbell);
 }
}

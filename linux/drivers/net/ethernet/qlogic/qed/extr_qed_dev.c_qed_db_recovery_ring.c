
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qed_hwfn {int cdev; } ;
struct qed_db_recovery_entry {scalar_t__ db_width; scalar_t__ db_data; int db_addr; } ;


 scalar_t__ DB_REC_WIDTH_32B ;
 int DIRECT_REG_WR (int ,int ) ;
 int DIRECT_REG_WR64 (int ,int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ) ;
 int QED_MSG_SPQ ;
 int qed_db_rec_sanity (int ,int ,scalar_t__,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void qed_db_recovery_ring(struct qed_hwfn *p_hwfn,
     struct qed_db_recovery_entry *db_entry)
{

 if (db_entry->db_width == DB_REC_WIDTH_32B) {
  DP_VERBOSE(p_hwfn, QED_MSG_SPQ,
      "ringing doorbell address %p data %x\n",
      db_entry->db_addr,
      *(u32 *)db_entry->db_data);
 } else {
  DP_VERBOSE(p_hwfn, QED_MSG_SPQ,
      "ringing doorbell address %p data %llx\n",
      db_entry->db_addr,
      *(u64 *)(db_entry->db_data));
 }


 if (!qed_db_rec_sanity(p_hwfn->cdev, db_entry->db_addr,
          db_entry->db_width, db_entry->db_data))
  return;





 wmb();


 if (db_entry->db_width == DB_REC_WIDTH_32B)
  DIRECT_REG_WR(db_entry->db_addr,
         *(u32 *)(db_entry->db_data));
 else
  DIRECT_REG_WR64(db_entry->db_addr,
    *(u64 *)(db_entry->db_data));




 wmb();
}

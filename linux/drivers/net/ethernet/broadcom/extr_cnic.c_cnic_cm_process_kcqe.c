
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct l4_kcq {int op_code; size_t conn_id; size_t cid; int status; } ;
struct kcqe {int dummy; } ;
struct iscsi_kcqe {int completion_status; } ;
struct cnic_sock {int const state; int flags; } ;
struct cnic_local {int (* close_conn ) (struct cnic_sock*,int const) ;struct cnic_sock* csk_tbl; } ;
struct cnic_dev {int flags; int netdev; struct cnic_local* cnic_priv; } ;


 int CNIC_F_BNX2X_CLASS ;
 int FCOE_RAMROD_CMD_ID_TERMINATE_CONN ;
 int L4_KCQE_COMPLETION_STATUS_PARITY_ERROR ;



 int L4_KCQE_OPCODE_VALUE_OFFLOAD_PG ;


 int L4_KCQE_OPCODE_VALUE_UPDATE_PG ;




 size_t MAX_CM_SK_TBL_SZ ;
 int SK_F_HW_ERR ;
 int SK_F_OFFLD_COMPLETE ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;
 int cnic_cm_process_offld_pg (struct cnic_dev*,struct l4_kcq*) ;
 int cnic_cm_upcall (struct cnic_local*,struct cnic_sock*,int) ;
 int cnic_in_use (struct cnic_sock*) ;
 int cnic_process_fcoe_term_conn (struct cnic_dev*,struct kcqe*) ;
 int csk_hold (struct cnic_sock*) ;
 int csk_put (struct cnic_sock*) ;
 int netdev_warn (int ,char*,int ,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int stub1 (struct cnic_sock*,int) ;
 int stub2 (struct cnic_sock*,int const) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void cnic_cm_process_kcqe(struct cnic_dev *dev, struct kcqe *kcqe)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct l4_kcq *l4kcqe = (struct l4_kcq *) kcqe;
 u8 opcode = l4kcqe->op_code;
 u32 l5_cid;
 struct cnic_sock *csk;

 if (opcode == FCOE_RAMROD_CMD_ID_TERMINATE_CONN) {
  cnic_process_fcoe_term_conn(dev, kcqe);
  return;
 }
 if (opcode == L4_KCQE_OPCODE_VALUE_OFFLOAD_PG ||
     opcode == L4_KCQE_OPCODE_VALUE_UPDATE_PG) {
  cnic_cm_process_offld_pg(dev, l4kcqe);
  return;
 }

 l5_cid = l4kcqe->conn_id;
 if (opcode & 0x80)
  l5_cid = l4kcqe->cid;
 if (l5_cid >= MAX_CM_SK_TBL_SZ)
  return;

 csk = &cp->csk_tbl[l5_cid];
 csk_hold(csk);

 if (!cnic_in_use(csk)) {
  csk_put(csk);
  return;
 }

 switch (opcode) {
 case 129:
  if (l4kcqe->status != 0) {
   clear_bit(SK_F_OFFLD_SCHED, &csk->flags);
   cnic_cm_upcall(cp, csk,
           134);
  }
  break;
 case 134:
  if (l4kcqe->status == 0)
   set_bit(SK_F_OFFLD_COMPLETE, &csk->flags);
  else if (l4kcqe->status ==
    L4_KCQE_COMPLETION_STATUS_PARITY_ERROR)
   set_bit(SK_F_HW_ERR, &csk->flags);

  smp_mb__before_atomic();
  clear_bit(SK_F_OFFLD_SCHED, &csk->flags);
  cnic_cm_upcall(cp, csk, opcode);
  break;

 case 131: {
  struct iscsi_kcqe *l5kcqe = (struct iscsi_kcqe *) kcqe;

  if (l4kcqe->status == 0 && l5kcqe->completion_status == 0)
   break;

  netdev_warn(dev->netdev, "RAMROD CLOSE compl with status 0x%x completion status 0x%x\n",
       l4kcqe->status, l5kcqe->completion_status);
  opcode = 136;
 }

 case 132:
 case 136:
 case 133:
 case 130:
 case 128:
  if (l4kcqe->status == L4_KCQE_COMPLETION_STATUS_PARITY_ERROR)
   set_bit(SK_F_HW_ERR, &csk->flags);

  cp->close_conn(csk, opcode);
  break;

 case 135:

  if (test_bit(CNIC_F_BNX2X_CLASS, &dev->flags) &&
      !test_bit(SK_F_OFFLD_COMPLETE, &csk->flags) &&
      csk->state == 136)
   cp->close_conn(csk, 133);
  else
   cnic_cm_upcall(cp, csk, opcode);
  break;
 }
 csk_put(csk);
}

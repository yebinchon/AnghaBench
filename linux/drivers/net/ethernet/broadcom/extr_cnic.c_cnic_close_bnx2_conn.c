
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_sock {int state; int flags; struct cnic_dev* dev; } ;
struct cnic_local {int dummy; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int L4_KCQE_OPCODE_VALUE_RESET_RECEIVED ;
 int SK_F_CONNECT_START ;
 int clear_bit (int ,int *) ;
 int cnic_close_conn (struct cnic_sock*) ;
 int cnic_cm_upcall (struct cnic_local*,struct cnic_sock*,int ) ;

__attribute__((used)) static void cnic_close_bnx2_conn(struct cnic_sock *csk, u32 opcode)
{
 struct cnic_dev *dev = csk->dev;
 struct cnic_local *cp = dev->cnic_priv;

 if (opcode == L4_KCQE_OPCODE_VALUE_RESET_RECEIVED) {
  cnic_cm_upcall(cp, csk, opcode);
  return;
 }

 clear_bit(SK_F_CONNECT_START, &csk->flags);
 cnic_close_conn(csk);
 csk->state = opcode;
 cnic_cm_upcall(cp, csk, opcode);
}

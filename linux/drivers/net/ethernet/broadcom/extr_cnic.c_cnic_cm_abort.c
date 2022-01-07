
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cnic_sock {scalar_t__ state; int flags; TYPE_1__* dev; } ;
struct cnic_local {int (* close_conn ) (struct cnic_sock*,scalar_t__) ;} ;
struct TYPE_2__ {struct cnic_local* cnic_priv; } ;


 int EALREADY ;
 int EINVAL ;
 scalar_t__ L4_KCQE_OPCODE_VALUE_RESET_COMP ;
 int SK_F_PG_OFFLD_COMPLETE ;
 scalar_t__ cnic_abort_prep (struct cnic_sock*) ;
 int cnic_cm_abort_req (struct cnic_sock*) ;
 int cnic_in_use (struct cnic_sock*) ;
 int msleep (int) ;
 int stub1 (struct cnic_sock*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_cm_abort(struct cnic_sock *csk)
{
 struct cnic_local *cp = csk->dev->cnic_priv;
 u32 opcode = L4_KCQE_OPCODE_VALUE_RESET_COMP;

 if (!cnic_in_use(csk))
  return -EINVAL;

 if (cnic_abort_prep(csk))
  return cnic_cm_abort_req(csk);





 cp->close_conn(csk, opcode);
 if (csk->state != opcode) {

  while (test_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
   msleep(1);

  return -EALREADY;
 }

 return 0;
}

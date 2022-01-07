
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int state; int flags; } ;


 int L4_KCQE_OPCODE_VALUE_RESET_COMP ;
 int SK_F_CONNECT_START ;
 int SK_F_OFFLD_COMPLETE ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int cnic_abort_prep(struct cnic_sock *csk)
{
 clear_bit(SK_F_CONNECT_START, &csk->flags);
 smp_mb__after_atomic();

 while (test_and_set_bit(SK_F_OFFLD_SCHED, &csk->flags))
  msleep(1);

 if (test_and_clear_bit(SK_F_OFFLD_COMPLETE, &csk->flags)) {
  csk->state = L4_KCQE_OPCODE_VALUE_RESET_COMP;
  return 1;
 }

 return 0;
}

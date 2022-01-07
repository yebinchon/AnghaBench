
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;


 int SK_F_CONNECT_START ;
 int SK_F_OFFLD_COMPLETE ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int cnic_close_prep(struct cnic_sock *csk)
{
 clear_bit(SK_F_CONNECT_START, &csk->flags);
 smp_mb__after_atomic();

 if (test_and_clear_bit(SK_F_OFFLD_COMPLETE, &csk->flags)) {
  while (test_and_set_bit(SK_F_OFFLD_SCHED, &csk->flags))
   msleep(1);

  return 1;
 }
 return 0;
}

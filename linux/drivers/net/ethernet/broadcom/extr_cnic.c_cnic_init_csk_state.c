
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; scalar_t__ state; } ;


 int SK_F_CLOSING ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void cnic_init_csk_state(struct cnic_sock *csk)
{
 csk->state = 0;
 clear_bit(SK_F_OFFLD_SCHED, &csk->flags);
 clear_bit(SK_F_CLOSING, &csk->flags);
}

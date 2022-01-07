
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;


 int SK_F_PG_OFFLD_COMPLETE ;
 int cnic_cm_offload_pg (struct cnic_sock*) ;
 int cnic_cm_update_pg (struct cnic_sock*) ;
 scalar_t__ cnic_offld_prep (struct cnic_sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_cm_set_pg(struct cnic_sock *csk)
{
 if (cnic_offld_prep(csk)) {
  if (test_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
   cnic_cm_update_pg(csk);
  else
   cnic_cm_offload_pg(csk);
 }
 return 0;
}

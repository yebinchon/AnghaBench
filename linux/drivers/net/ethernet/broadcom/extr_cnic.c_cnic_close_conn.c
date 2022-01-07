
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;


 int SK_F_PG_OFFLD_COMPLETE ;
 int clear_bit (int ,int *) ;
 int cnic_cm_cleanup (struct cnic_sock*) ;
 int cnic_cm_upload_pg (struct cnic_sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cnic_close_conn(struct cnic_sock *csk)
{
 if (test_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags)) {
  cnic_cm_upload_pg(csk);
  clear_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags);
 }
 cnic_cm_cleanup(csk);
}

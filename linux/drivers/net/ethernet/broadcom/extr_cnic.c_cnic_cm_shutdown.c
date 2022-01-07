
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sock {int flags; } ;
struct cnic_local {struct cnic_sock* csk_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int MAX_CM_SK_TBL_SZ ;
 int SK_F_INUSE ;
 int clear_bit (int ,int *) ;
 int cnic_cm_cleanup (struct cnic_sock*) ;
 int cnic_cm_free_mem (struct cnic_dev*) ;

__attribute__((used)) static int cnic_cm_shutdown(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int i;

 if (!cp->csk_tbl)
  return 0;

 for (i = 0; i < MAX_CM_SK_TBL_SZ; i++) {
  struct cnic_sock *csk = &cp->csk_tbl[i];

  clear_bit(SK_F_INUSE, &csk->flags);
  cnic_cm_cleanup(csk);
 }
 cnic_cm_free_mem(dev);

 return 0;
}

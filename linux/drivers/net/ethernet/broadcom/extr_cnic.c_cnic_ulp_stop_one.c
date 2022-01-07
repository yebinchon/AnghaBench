
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int (* cnic_stop ) (int ) ;} ;
struct cnic_local {int * ulp_flags; int * ulp_handle; int * ulp_ops; } ;


 int CNIC_ULP_ISCSI ;
 int ISCSI_KEVENT_IF_DOWN ;
 int ULP_F_CALL_PENDING ;
 int ULP_F_START ;
 int clear_bit (int ,int *) ;
 int cnic_lock ;
 int cnic_send_nlmsg (struct cnic_local*,int ,int *) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cnic_ulp_ops* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void cnic_ulp_stop_one(struct cnic_local *cp, int if_type)
{
 struct cnic_ulp_ops *ulp_ops;

 if (if_type == CNIC_ULP_ISCSI)
  cnic_send_nlmsg(cp, ISCSI_KEVENT_IF_DOWN, ((void*)0));

 mutex_lock(&cnic_lock);
 ulp_ops = rcu_dereference_protected(cp->ulp_ops[if_type],
         lockdep_is_held(&cnic_lock));
 if (!ulp_ops) {
  mutex_unlock(&cnic_lock);
  return;
 }
 set_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
 mutex_unlock(&cnic_lock);

 if (test_and_clear_bit(ULP_F_START, &cp->ulp_flags[if_type]))
  ulp_ops->cnic_stop(cp->ulp_handle[if_type]);

 clear_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
}

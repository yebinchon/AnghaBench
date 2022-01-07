
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int (* cnic_start ) (int ) ;} ;
struct cnic_local {int * ulp_flags; int * ulp_handle; int * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int MAX_CNIC_ULP_TYPE ;
 int ULP_F_CALL_PENDING ;
 int ULP_F_START ;
 int clear_bit (int ,int *) ;
 int cnic_lock ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cnic_ulp_ops* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void cnic_ulp_start(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int if_type;

 for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
  struct cnic_ulp_ops *ulp_ops;

  mutex_lock(&cnic_lock);
  ulp_ops = rcu_dereference_protected(cp->ulp_ops[if_type],
          lockdep_is_held(&cnic_lock));
  if (!ulp_ops || !ulp_ops->cnic_start) {
   mutex_unlock(&cnic_lock);
   continue;
  }
  set_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
  mutex_unlock(&cnic_lock);

  if (!test_and_set_bit(ULP_F_START, &cp->ulp_flags[if_type]))
   ulp_ops->cnic_start(cp->ulp_handle[if_type]);

  clear_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
 }
}

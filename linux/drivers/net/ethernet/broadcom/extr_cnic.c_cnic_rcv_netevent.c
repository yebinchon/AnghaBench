
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cnic_ulp_ops {int (* indicate_netevent ) (void*,unsigned long,int ) ;} ;
struct cnic_local {int * ulp_flags; void** ulp_handle; int * ulp_ops; } ;


 int MAX_CNIC_ULP_TYPE ;
 int ULP_F_CALL_PENDING ;
 int clear_bit (int ,int *) ;
 int cnic_lock ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cnic_ulp_ops* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (void*,unsigned long,int ) ;

__attribute__((used)) static void cnic_rcv_netevent(struct cnic_local *cp, unsigned long event,
         u16 vlan_id)
{
 int if_type;

 for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
  struct cnic_ulp_ops *ulp_ops;
  void *ctx;

  mutex_lock(&cnic_lock);
  ulp_ops = rcu_dereference_protected(cp->ulp_ops[if_type],
      lockdep_is_held(&cnic_lock));
  if (!ulp_ops || !ulp_ops->indicate_netevent) {
   mutex_unlock(&cnic_lock);
   continue;
  }

  ctx = cp->ulp_handle[if_type];

  set_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
  mutex_unlock(&cnic_lock);

  ulp_ops->indicate_netevent(ctx, event, vlan_id);

  clear_bit(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
 }
}

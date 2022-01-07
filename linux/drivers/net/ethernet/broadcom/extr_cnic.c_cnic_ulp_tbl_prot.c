
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int dummy; } ;


 int cnic_lock ;
 int * cnic_ulp_tbl ;
 int lockdep_is_held (int *) ;
 struct cnic_ulp_ops* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct cnic_ulp_ops *cnic_ulp_tbl_prot(int type)
{
 return rcu_dereference_protected(cnic_ulp_tbl[type],
      lockdep_is_held(&cnic_lock));
}

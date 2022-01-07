
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int (* cnic_get_stats ) (int ) ;} ;
struct cnic_local {int * ulp_handle; int * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int ENODEV ;
 int cnic_lock ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cnic_ulp_ops* rcu_dereference_protected (int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int cnic_copy_ulp_stats(struct cnic_dev *dev, int ulp_type)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_ulp_ops *ulp_ops;
 int rc;

 mutex_lock(&cnic_lock);
 ulp_ops = rcu_dereference_protected(cp->ulp_ops[ulp_type],
         lockdep_is_held(&cnic_lock));
 if (ulp_ops && ulp_ops->cnic_get_stats)
  rc = ulp_ops->cnic_get_stats(cp->ulp_handle[ulp_type]);
 else
  rc = -ENODEV;
 mutex_unlock(&cnic_lock);
 return rc;
}

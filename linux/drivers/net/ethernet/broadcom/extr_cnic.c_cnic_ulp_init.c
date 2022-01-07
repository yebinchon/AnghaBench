
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int (* cnic_init ) (struct cnic_dev*) ;} ;
struct cnic_local {int * ulp_flags; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int MAX_CNIC_ULP_TYPE_EXT ;
 int ULP_F_INIT ;
 int cnic_lock ;
 struct cnic_ulp_ops* cnic_ulp_tbl_prot (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cnic_dev*) ;
 int test_and_set_bit (int ,int *) ;
 int ulp_get (struct cnic_ulp_ops*) ;
 int ulp_put (struct cnic_ulp_ops*) ;

__attribute__((used)) static void cnic_ulp_init(struct cnic_dev *dev)
{
 int i;
 struct cnic_local *cp = dev->cnic_priv;

 for (i = 0; i < MAX_CNIC_ULP_TYPE_EXT; i++) {
  struct cnic_ulp_ops *ulp_ops;

  mutex_lock(&cnic_lock);
  ulp_ops = cnic_ulp_tbl_prot(i);
  if (!ulp_ops || !ulp_ops->cnic_init) {
   mutex_unlock(&cnic_lock);
   continue;
  }
  ulp_get(ulp_ops);
  mutex_unlock(&cnic_lock);

  if (!test_and_set_bit(ULP_F_INIT, &cp->ulp_flags[i]))
   ulp_ops->cnic_init(dev);

  ulp_put(ulp_ops);
 }
}

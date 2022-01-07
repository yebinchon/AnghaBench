
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int mps_ref; int mps_ref_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

int cxgb4_init_mps_ref_entries(struct adapter *adap)
{
 spin_lock_init(&adap->mps_ref_lock);
 INIT_LIST_HEAD(&adap->mps_ref);

 return 0;
}

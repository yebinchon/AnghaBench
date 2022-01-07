
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int contexts_num; } ;


 int EBUSY ;
 int atomic_cmpxchg (int *,int ,int) ;

int cxl_adapter_context_lock(struct cxl *adapter)
{
 int rc;

 rc = atomic_cmpxchg(&adapter->contexts_num, 0, -1);
 return rc ? -EBUSY : 0;
}

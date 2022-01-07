
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int contexts_num; } ;


 int EBUSY ;
 int atomic_inc_unless_negative (int *) ;

int cxl_adapter_context_get(struct cxl *adapter)
{
 int rc;

 rc = atomic_inc_unless_negative(&adapter->contexts_num);
 return rc ? 0 : -EBUSY;
}

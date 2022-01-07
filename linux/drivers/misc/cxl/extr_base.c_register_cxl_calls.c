
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_calls {int dummy; } ;


 int EBUSY ;
 scalar_t__ cxl_calls ;
 int rcu_assign_pointer (scalar_t__,struct cxl_calls*) ;

int register_cxl_calls(struct cxl_calls *calls)
{
 if (cxl_calls)
  return -EBUSY;

 rcu_assign_pointer(cxl_calls, calls);
 return 0;
}

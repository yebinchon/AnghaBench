
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int contexts_num; } ;


 int WARN (int,char*,int) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int atomic_set (int *,int ) ;

void cxl_adapter_context_unlock(struct cxl *adapter)
{
 int val = atomic_cmpxchg(&adapter->contexts_num, -1, 0);







 if (val != -1) {
  atomic_set(&adapter->contexts_num, 0);
  WARN(1, "Adapter context unlocked with %d active contexts",
       val);
 }
}

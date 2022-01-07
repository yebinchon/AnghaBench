
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1_adapter {int int_enabled; int napi; } ;


 int IMR_NORXTX_MASK ;
 int __napi_schedule (int *) ;
 int atlx_imr_set (struct atl1_adapter*,int ) ;
 int napi_schedule_prep (int *) ;

__attribute__((used)) static inline int atl1_sched_rings_clean(struct atl1_adapter* adapter)
{
 if (!napi_schedule_prep(&adapter->napi))





  return 0;

 __napi_schedule(&adapter->napi);






 if (!adapter->int_enabled)
  return 1;

 atlx_imr_set(adapter, IMR_NORXTX_MASK);
 return 1;
}

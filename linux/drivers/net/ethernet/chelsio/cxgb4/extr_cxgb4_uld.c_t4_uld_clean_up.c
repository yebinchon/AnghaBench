
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__* uld; } ;
struct TYPE_2__ {int handle; } ;


 unsigned int CXGB4_ULD_MAX ;
 int cxgb4_shutdown_uld_adapter (struct adapter*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uld_mutex ;

void t4_uld_clean_up(struct adapter *adap)
{
 unsigned int i;

 mutex_lock(&uld_mutex);
 for (i = 0; i < CXGB4_ULD_MAX; i++) {
  if (!adap->uld[i].handle)
   continue;

  cxgb4_shutdown_uld_adapter(adap, i);
 }
 mutex_unlock(&uld_mutex);
}

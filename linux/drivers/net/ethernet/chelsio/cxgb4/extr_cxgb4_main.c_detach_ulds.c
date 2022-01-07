
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__* uld; int list_node; } ;
struct TYPE_2__ {scalar_t__ handle; int (* state_change ) (scalar_t__,int ) ;} ;


 int CXGB4_STATE_DETACH ;
 unsigned int CXGB4_ULD_MAX ;
 int adapter_list ;
 int cxgb4_netevent_nb ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netevent_registered ;
 int stub1 (scalar_t__,int ) ;
 int uld_mutex ;
 int unregister_netevent_notifier (int *) ;

__attribute__((used)) static void detach_ulds(struct adapter *adap)
{
 unsigned int i;

 mutex_lock(&uld_mutex);
 list_del(&adap->list_node);

 for (i = 0; i < CXGB4_ULD_MAX; i++)
  if (adap->uld && adap->uld[i].handle)
   adap->uld[i].state_change(adap->uld[i].handle,
          CXGB4_STATE_DETACH);

 if (netevent_registered && list_empty(&adapter_list)) {
  unregister_netevent_notifier(&cxgb4_netevent_nb);
  netevent_registered = 0;
 }
 mutex_unlock(&uld_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct iavf_adapter {int watchdog_task; int flags; int aq_required; TYPE_1__ vsi; int state; } ;


 scalar_t__ CLIENT_ENABLED (struct iavf_adapter*) ;
 int IAVF_FLAG_AQ_ENABLE_QUEUES ;
 int IAVF_FLAG_CLIENT_NEEDS_OPEN ;
 int __IAVF_RUNNING ;
 int __IAVF_VSI_DOWN ;
 int clear_bit (int ,int ) ;
 int iavf_napi_enable_all (struct iavf_adapter*) ;
 int iavf_wq ;
 int mod_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void iavf_up_complete(struct iavf_adapter *adapter)
{
 adapter->state = __IAVF_RUNNING;
 clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);

 iavf_napi_enable_all(adapter);

 adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_QUEUES;
 if (CLIENT_ENABLED(adapter))
  adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_OPEN;
 mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
}

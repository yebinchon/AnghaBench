
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crq_server_adapter {int reset_wait_queue; int dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int * hmcs ;
 TYPE_1__ ibmvmc ;
 int ibmvmc_max_hmcs ;
 int ibmvmc_return_hmc (int *,int) ;
 scalar_t__ ibmvmc_state_crqinit ;
 scalar_t__ ibmvmc_state_sched_reset ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ibmvmc_reset(struct crq_server_adapter *adapter, bool xport_event)
{
 int i;

 if (ibmvmc.state != ibmvmc_state_sched_reset) {
  dev_info(adapter->dev, "*** Reset to initial state.\n");
  for (i = 0; i < ibmvmc_max_hmcs; i++)
   ibmvmc_return_hmc(&hmcs[i], xport_event);

  if (xport_event) {




   ibmvmc.state = ibmvmc_state_crqinit;
  } else {
   ibmvmc.state = ibmvmc_state_sched_reset;
   dev_dbg(adapter->dev, "Device reset scheduled");
   wake_up_interruptible(&adapter->reset_wait_queue);
  }
 }
}

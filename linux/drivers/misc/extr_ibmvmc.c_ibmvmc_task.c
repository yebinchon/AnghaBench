
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dummy; } ;
struct ibmvmc_crq_msg {int valid; } ;
struct crq_server_adapter {int queue; int dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 struct ibmvmc_crq_msg* crq_queue_next_crq (int *) ;
 TYPE_1__ ibmvmc ;
 int ibmvmc_handle_crq (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ;
 scalar_t__ ibmvmc_state_sched_reset ;
 struct vio_dev* to_vio_dev (int ) ;
 int vio_disable_interrupts (struct vio_dev*) ;
 int vio_enable_interrupts (struct vio_dev*) ;

__attribute__((used)) static void ibmvmc_task(unsigned long data)
{
 struct crq_server_adapter *adapter =
  (struct crq_server_adapter *)data;
 struct vio_dev *vdev = to_vio_dev(adapter->dev);
 struct ibmvmc_crq_msg *crq;
 int done = 0;

 while (!done) {

  while ((crq = crq_queue_next_crq(&adapter->queue)) != ((void*)0)) {
   ibmvmc_handle_crq(crq, adapter);
   crq->valid = 0x00;



   if (ibmvmc.state == ibmvmc_state_sched_reset)
    return;
  }

  vio_enable_interrupts(vdev);
  crq = crq_queue_next_crq(&adapter->queue);
  if (crq) {
   vio_disable_interrupts(vdev);
   ibmvmc_handle_crq(crq, adapter);
   crq->valid = 0x00;



   if (ibmvmc.state == ibmvmc_state_sched_reset)
    return;
  } else {
   done = 1;
  }
 }
}

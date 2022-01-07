
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_device_id {int dummy; } ;
struct vio_dev {int dev; int unit_address; } ;
struct crq_server_adapter {int * reset_task; int * dev; int reset_wait_queue; int riobn; int liobn; } ;
struct TYPE_2__ {void* state; } ;


 int EPERM ;
 int H_RESOURCE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int dev_set_drvdata (int *,struct crq_server_adapter*) ;
 int dev_warn (int *,char*) ;
 TYPE_1__ ibmvmc ;
 struct crq_server_adapter ibmvmc_adapter ;
 int ibmvmc_init_crq_queue (struct crq_server_adapter*) ;
 int ibmvmc_reset_task ;
 scalar_t__ ibmvmc_send_crq (struct crq_server_adapter*,int,int ) ;
 void* ibmvmc_state_crqinit ;
 void* ibmvmc_state_failed ;
 int init_waitqueue_head (int *) ;
 int * kthread_run (int ,struct crq_server_adapter*,char*) ;
 int kthread_stop (int *) ;
 int memset (struct crq_server_adapter*,int ,int) ;
 int read_dma_window (struct vio_dev*,struct crq_server_adapter*) ;

__attribute__((used)) static int ibmvmc_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 struct crq_server_adapter *adapter = &ibmvmc_adapter;
 int rc;

 dev_set_drvdata(&vdev->dev, ((void*)0));
 memset(adapter, 0, sizeof(*adapter));
 adapter->dev = &vdev->dev;

 dev_info(adapter->dev, "Probe for UA 0x%x\n", vdev->unit_address);

 rc = read_dma_window(vdev, adapter);
 if (rc != 0) {
  ibmvmc.state = ibmvmc_state_failed;
  return -1;
 }

 dev_dbg(adapter->dev, "Probe: liobn 0x%x, riobn 0x%x\n",
  adapter->liobn, adapter->riobn);

 init_waitqueue_head(&adapter->reset_wait_queue);
 adapter->reset_task = kthread_run(ibmvmc_reset_task, adapter, "ibmvmc");
 if (IS_ERR(adapter->reset_task)) {
  dev_err(adapter->dev, "Failed to start reset thread\n");
  ibmvmc.state = ibmvmc_state_failed;
  rc = PTR_ERR(adapter->reset_task);
  adapter->reset_task = ((void*)0);
  return rc;
 }

 rc = ibmvmc_init_crq_queue(adapter);
 if (rc != 0 && rc != H_RESOURCE) {
  dev_err(adapter->dev, "Error initializing CRQ.  rc = 0x%x\n",
   rc);
  ibmvmc.state = ibmvmc_state_failed;
  goto crq_failed;
 }

 ibmvmc.state = ibmvmc_state_crqinit;





 if (ibmvmc_send_crq(adapter, 0xC001000000000000LL, 0) != 0 &&
     rc != H_RESOURCE)
  dev_warn(adapter->dev, "Failed to send initialize CRQ message\n");

 dev_set_drvdata(&vdev->dev, adapter);

 return 0;

crq_failed:
 kthread_stop(adapter->reset_task);
 adapter->reset_task = ((void*)0);
 return -EPERM;
}

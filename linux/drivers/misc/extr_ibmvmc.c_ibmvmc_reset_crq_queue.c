
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int unit_address; } ;
struct crq_queue {int msg_token; scalar_t__ cur; int msgs; } ;
struct crq_server_adapter {int dev; struct crq_queue queue; } ;


 int H_REG_CRQ ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int h_free_crq (int ) ;
 int memset (int ,int,int ) ;
 int plpar_hcall_norets (int ,int ,int ,int ) ;
 struct vio_dev* to_vio_dev (int ) ;

__attribute__((used)) static int ibmvmc_reset_crq_queue(struct crq_server_adapter *adapter)
{
 struct vio_dev *vdev = to_vio_dev(adapter->dev);
 struct crq_queue *queue = &adapter->queue;
 int rc = 0;


 h_free_crq(vdev->unit_address);


 memset(queue->msgs, 0x00, PAGE_SIZE);
 queue->cur = 0;


 rc = plpar_hcall_norets(H_REG_CRQ,
    vdev->unit_address,
    queue->msg_token, PAGE_SIZE);
 if (rc == 2)

  dev_warn(adapter->dev, "Partner adapter not ready\n");
 else if (rc != 0)
  dev_err(adapter->dev, "couldn't register crq--rc 0x%x\n", rc);

 return rc;
}

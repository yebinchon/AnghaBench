
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; int unit_address; } ;
struct ibmvnic_adapter {struct vio_dev* vdev; } ;


 int H_BUSY ;
 int H_ENABLE_CRQ ;
 int H_IN_PROGRESS ;
 scalar_t__ H_IS_LONG_BUSY (int) ;
 int dev_err (int *,char*,int) ;
 int plpar_hcall_norets (int ,int ) ;

__attribute__((used)) static int ibmvnic_reenable_crq_queue(struct ibmvnic_adapter *adapter)
{
 struct vio_dev *vdev = adapter->vdev;
 int rc;

 do {
  rc = plpar_hcall_norets(H_ENABLE_CRQ, vdev->unit_address);
 } while (rc == H_IN_PROGRESS || rc == H_BUSY || H_IS_LONG_BUSY(rc));

 if (rc)
  dev_err(&vdev->dev, "Error enabling adapter (rc=%d)\n", rc);

 return rc;
}

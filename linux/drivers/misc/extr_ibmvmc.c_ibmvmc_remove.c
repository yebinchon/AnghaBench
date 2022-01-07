
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int unit_address; int dev; } ;
struct crq_server_adapter {int dev; } ;


 struct crq_server_adapter* dev_get_drvdata (int *) ;
 int dev_info (int ,char*,int ) ;
 int ibmvmc_release_crq_queue (struct crq_server_adapter*) ;

__attribute__((used)) static int ibmvmc_remove(struct vio_dev *vdev)
{
 struct crq_server_adapter *adapter = dev_get_drvdata(&vdev->dev);

 dev_info(adapter->dev, "Entering remove for UA 0x%x\n",
   vdev->unit_address);
 ibmvmc_release_crq_queue(adapter);

 return 0;
}

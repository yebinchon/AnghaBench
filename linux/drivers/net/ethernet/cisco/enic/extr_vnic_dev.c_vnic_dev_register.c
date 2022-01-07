
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev_bar {int dummy; } ;
struct vnic_dev {struct pci_dev* pdev; void* priv; } ;
struct pci_dev {int dummy; } ;


 int GFP_KERNEL ;
 struct vnic_dev* kzalloc (int,int ) ;
 scalar_t__ vnic_dev_discover_res (struct vnic_dev*,struct vnic_dev_bar*,unsigned int) ;
 int vnic_dev_unregister (struct vnic_dev*) ;

struct vnic_dev *vnic_dev_register(struct vnic_dev *vdev,
 void *priv, struct pci_dev *pdev, struct vnic_dev_bar *bar,
 unsigned int num_bars)
{
 if (!vdev) {
  vdev = kzalloc(sizeof(struct vnic_dev), GFP_KERNEL);
  if (!vdev)
   return ((void*)0);
 }

 vdev->priv = priv;
 vdev->pdev = pdev;

 if (vnic_dev_discover_res(vdev, bar, num_bars))
  goto err_out;

 return vdev;

err_out:
 vnic_dev_unregister(vdev);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {int pdev; scalar_t__ notify; scalar_t__ notify_pa; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 void* pci_alloc_consistent (int ,int,int *) ;
 int vdev_neterr (struct vnic_dev*,char*,scalar_t__) ;
 int vnic_dev_notify_setcmd (struct vnic_dev*,void*,int ,int ) ;

int vnic_dev_notify_set(struct vnic_dev *vdev, u16 intr)
{
 void *notify_addr;
 dma_addr_t notify_pa;

 if (vdev->notify || vdev->notify_pa) {
  vdev_neterr(vdev, "notify block %p still allocated\n",
       vdev->notify);
  return -EINVAL;
 }

 notify_addr = pci_alloc_consistent(vdev->pdev,
   sizeof(struct vnic_devcmd_notify),
   &notify_pa);
 if (!notify_addr)
  return -ENOMEM;

 return vnic_dev_notify_setcmd(vdev, notify_addr, notify_pa, intr);
}

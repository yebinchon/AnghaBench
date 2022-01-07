
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vnic_dev {int pdev; } ;
typedef int dma_addr_t ;


 int CMD_INIT_PROV_INFO2 ;
 int ENOMEM ;
 int memcpy (void*,int *,int ) ;
 void* pci_alloc_consistent (int ,int ,int *) ;
 int pci_free_consistent (int ,int ,void*,int ) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_init_prov2(struct vnic_dev *vdev, u8 *buf, u32 len)
{
 u64 a0, a1 = len;
 int wait = 1000;
 dma_addr_t prov_pa;
 void *prov_buf;
 int ret;

 prov_buf = pci_alloc_consistent(vdev->pdev, len, &prov_pa);
 if (!prov_buf)
  return -ENOMEM;

 memcpy(prov_buf, buf, len);

 a0 = prov_pa;

 ret = vnic_dev_cmd(vdev, CMD_INIT_PROV_INFO2, &a0, &a1, wait);

 pci_free_consistent(vdev->pdev, len, prov_buf, prov_pa);

 return ret;
}

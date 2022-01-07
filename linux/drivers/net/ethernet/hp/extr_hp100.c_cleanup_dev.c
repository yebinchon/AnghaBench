
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct hp100_private {int mode; scalar_t__ mem_ptr_virt; int page_vaddr_algn; int pci_dev; } ;


 int HP100_REGION_SIZE ;
 scalar_t__ MAX_RINGSIZE ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (int ,scalar_t__,int ,int ) ;
 int release_region (int ,int ) ;
 int unregister_netdev (struct net_device*) ;
 int virt_to_whatever (struct net_device*,int ) ;

__attribute__((used)) static void cleanup_dev(struct net_device *d)
{
 struct hp100_private *p = netdev_priv(d);

 unregister_netdev(d);
 release_region(d->base_addr, HP100_REGION_SIZE);

 if (p->mode == 1)
  pci_free_consistent(p->pci_dev, MAX_RINGSIZE + 0x0f,
        p->page_vaddr_algn,
        virt_to_whatever(d, p->page_vaddr_algn));
 if (p->mem_ptr_virt)
  iounmap(p->mem_ptr_virt);

 free_netdev(d);
}

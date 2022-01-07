
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dummy; } ;
struct net_device {int base_addr; } ;


 scalar_t__ HYDRA_NIC_BASE ;
 int IRQ_AMIGA_PORTS ;
 scalar_t__ ZTWO_PADDR (int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int release_mem_region (scalar_t__,int) ;
 int unregister_netdev (struct net_device*) ;
 struct net_device* zorro_get_drvdata (struct zorro_dev*) ;

__attribute__((used)) static void hydra_remove_one(struct zorro_dev *z)
{
    struct net_device *dev = zorro_get_drvdata(z);

    unregister_netdev(dev);
    free_irq(IRQ_AMIGA_PORTS, dev);
    release_mem_region(ZTWO_PADDR(dev->base_addr)-HYDRA_NIC_BASE, 0x10000);
    free_netdev(dev);
}

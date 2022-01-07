
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dummy; } ;
struct net_device {int mem_start; int base_addr; } ;
struct Am79C960 {int dummy; } ;


 int ARIADNE_RAM_SIZE ;
 int ZTWO_PADDR (int ) ;
 int free_netdev (struct net_device*) ;
 int release_mem_region (int ,int) ;
 int unregister_netdev (struct net_device*) ;
 struct net_device* zorro_get_drvdata (struct zorro_dev*) ;

__attribute__((used)) static void ariadne_remove_one(struct zorro_dev *z)
{
 struct net_device *dev = zorro_get_drvdata(z);

 unregister_netdev(dev);
 release_mem_region(ZTWO_PADDR(dev->base_addr), sizeof(struct Am79C960));
 release_mem_region(ZTWO_PADDR(dev->mem_start), ARIADNE_RAM_SIZE);
 free_netdev(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int name; } ;
struct hp100_private {int dummy; } ;
struct eisa_device {scalar_t__ base_addr; int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int HP100_BUS_EISA ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_set_drvdata (struct device*,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int hp100_probe1 (struct net_device*,scalar_t__,int ,int *) ;
 int printk (char*,int ,int ) ;
 struct eisa_device* to_eisa_device (struct device*) ;

__attribute__((used)) static int hp100_eisa_probe(struct device *gendev)
{
 struct net_device *dev = alloc_etherdev(sizeof(struct hp100_private));
 struct eisa_device *edev = to_eisa_device(gendev);
 int err;

 if (!dev)
  return -ENOMEM;

 SET_NETDEV_DEV(dev, &edev->dev);

 err = hp100_probe1(dev, edev->base_addr + 0xC38, HP100_BUS_EISA, ((void*)0));
 if (err)
  goto out1;





 dev_set_drvdata(gendev, dev);
 return 0;
 out1:
 free_netdev(dev);
 return err;
}

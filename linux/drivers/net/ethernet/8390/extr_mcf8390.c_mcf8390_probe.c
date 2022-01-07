
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct net_device {int base_addr; int irq; } ;
typedef int resource_size_t ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* ____alloc_ei_netdev (int ) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int mcf8390_init (struct net_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mcf8390_probe(struct platform_device *pdev)
{
 struct net_device *dev;
 struct resource *mem, *irq;
 resource_size_t msize;
 int ret;

 irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (irq == ((void*)0)) {
  dev_err(&pdev->dev, "no IRQ specified?\n");
  return -ENXIO;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (mem == ((void*)0)) {
  dev_err(&pdev->dev, "no memory address specified?\n");
  return -ENXIO;
 }
 msize = resource_size(mem);
 if (!request_mem_region(mem->start, msize, pdev->name))
  return -EBUSY;

 dev = ____alloc_ei_netdev(0);
 if (dev == ((void*)0)) {
  release_mem_region(mem->start, msize);
  return -ENOMEM;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);
 platform_set_drvdata(pdev, dev);

 dev->irq = irq->start;
 dev->base_addr = mem->start;

 ret = mcf8390_init(dev);
 if (ret) {
  release_mem_region(mem->start, msize);
  free_netdev(dev);
  return ret;
 }
 return 0;
}

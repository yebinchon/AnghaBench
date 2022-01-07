
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct device {int dummy; } ;
typedef int irq_handler_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* devm_kasprintf (struct device*,int ,char*,int ,char const*) ;
 int netdev_err (struct net_device*,char*,char*) ;
 int request_irq (unsigned int,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static inline int ravb_hook_irq(unsigned int irq, irq_handler_t handler,
    struct net_device *ndev, struct device *dev,
    const char *ch)
{
 char *name;
 int error;

 name = devm_kasprintf(dev, GFP_KERNEL, "%s:%s", ndev->name, ch);
 if (!name)
  return -ENOMEM;
 error = request_irq(irq, handler, 0, name, ndev);
 if (error)
  netdev_err(ndev, "cannot request IRQ %s\n", name);

 return error;
}

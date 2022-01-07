
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct niu_ops {int dummy; } ;
struct niu {int port; int reset_task; int lock; int msg_enable; struct niu_ops const* ops; struct device* device; struct platform_device* op; struct pci_dev* pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int NIU_NUM_TXCHAN ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 struct niu* netdev_priv (struct net_device*) ;
 int niu_debug ;
 int niu_reset_task ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct net_device *niu_alloc_and_init(struct device *gen_dev,
          struct pci_dev *pdev,
          struct platform_device *op,
          const struct niu_ops *ops, u8 port)
{
 struct net_device *dev;
 struct niu *np;

 dev = alloc_etherdev_mq(sizeof(struct niu), NIU_NUM_TXCHAN);
 if (!dev)
  return ((void*)0);

 SET_NETDEV_DEV(dev, gen_dev);

 np = netdev_priv(dev);
 np->dev = dev;
 np->pdev = pdev;
 np->op = op;
 np->device = gen_dev;
 np->ops = ops;

 np->msg_enable = niu_debug;

 spin_lock_init(&np->lock);
 INIT_WORK(&np->reset_task, niu_reset_task);

 np->port = port;

 return dev;
}

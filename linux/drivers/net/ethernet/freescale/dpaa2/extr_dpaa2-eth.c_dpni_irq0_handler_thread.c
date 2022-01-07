
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fsl_mc_device {int mc_handle; int mc_io; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int DPNI_IRQ_EVENT_ENDPOINT_CHANGED ;
 int DPNI_IRQ_EVENT_LINK_CHANGED ;
 int DPNI_IRQ_INDEX ;
 int IRQ_HANDLED ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int dpni_get_irq_status (int ,int ,int ,int ,int*) ;
 int link_state_update (int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_priv (struct net_device*) ;
 int set_mac_addr (int ) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t dpni_irq0_handler_thread(int irq_num, void *arg)
{
 u32 status = ~0;
 struct device *dev = (struct device *)arg;
 struct fsl_mc_device *dpni_dev = to_fsl_mc_device(dev);
 struct net_device *net_dev = dev_get_drvdata(dev);
 int err;

 err = dpni_get_irq_status(dpni_dev->mc_io, 0, dpni_dev->mc_handle,
      DPNI_IRQ_INDEX, &status);
 if (unlikely(err)) {
  netdev_err(net_dev, "Can't get irq status (err %d)\n", err);
  return IRQ_HANDLED;
 }

 if (status & DPNI_IRQ_EVENT_LINK_CHANGED)
  link_state_update(netdev_priv(net_dev));

 if (status & DPNI_IRQ_EVENT_ENDPOINT_CHANGED)
  set_mac_addr(netdev_priv(net_dev));

 return IRQ_HANDLED;
}

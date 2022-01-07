
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int irqlock; int dmaing; } ;


 int netdev_err (struct net_device*,char*,char const*,int ,int ) ;

__attribute__((used)) static void mcf8390_dmaing_err(const char *func, struct net_device *dev,
          struct ei_device *ei_local)
{
 netdev_err(dev, "%s: DMAing conflict [DMAstat:%d][irqlock:%d]\n",
  func, ei_local->dmaing, ei_local->irqlock);
}

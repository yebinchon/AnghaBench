
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int dspcfg_workaround; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct netdev_private* netdev_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncmp (char*,char const*,size_t) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t natsemi_set_dspcfg_workaround(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct netdev_private *np = netdev_priv(to_net_dev(dev));
 int new_setting;
 unsigned long flags;


        if (!strncmp("on", buf, count - 1) || !strncmp("1", buf, count - 1))
                new_setting = 1;
        else if (!strncmp("off", buf, count - 1) ||
                 !strncmp("0", buf, count - 1))
  new_setting = 0;
 else
                 return count;

 spin_lock_irqsave(&np->lock, flags);

 np->dspcfg_workaround = new_setting;

 spin_unlock_irqrestore(&np->lock, flags);

 return count;
}

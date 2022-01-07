
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_mdio_ops {scalar_t__ (* is_done ) (struct orion_mdio_dev*) ;int poll_interval_max; int poll_interval_min; } ;
struct orion_mdio_dev {scalar_t__ err_interrupt; int smi_busy_wait; } ;
struct mii_bus {int parent; struct orion_mdio_dev* priv; } ;


 int ETIMEDOUT ;
 int MVMDIO_SMI_TIMEOUT ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 scalar_t__ stub1 (struct orion_mdio_dev*) ;
 scalar_t__ stub2 (struct orion_mdio_dev*) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 unsigned long usecs_to_jiffies (int ) ;
 int usleep_range (int ,int ) ;
 int wait_event_timeout (int ,scalar_t__,unsigned long) ;

__attribute__((used)) static int orion_mdio_wait_ready(const struct orion_mdio_ops *ops,
     struct mii_bus *bus)
{
 struct orion_mdio_dev *dev = bus->priv;
 unsigned long timeout = usecs_to_jiffies(MVMDIO_SMI_TIMEOUT);
 unsigned long end = jiffies + timeout;
 int timedout = 0;

 while (1) {
         if (ops->is_done(dev))
   return 0;
         else if (timedout)
   break;

         if (dev->err_interrupt <= 0) {
   usleep_range(ops->poll_interval_min,
         ops->poll_interval_max);

   if (time_is_before_jiffies(end))
    ++timedout;
         } else {




   if (timeout < 2)
    timeout = 2;
   wait_event_timeout(dev->smi_busy_wait,
               ops->is_done(dev), timeout);

   ++timedout;
         }
 }

 dev_err(bus->parent, "Timeout: SMI busy for too long\n");
 return -ETIMEDOUT;
}

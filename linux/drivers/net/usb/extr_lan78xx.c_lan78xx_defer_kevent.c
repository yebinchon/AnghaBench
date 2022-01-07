
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan78xx_net {int net; int wq; int flags; } ;


 int netdev_err (int ,char*,int) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int,int *) ;

__attribute__((used)) static void lan78xx_defer_kevent(struct lan78xx_net *dev, int work)
{
 set_bit(work, &dev->flags);
 if (!schedule_delayed_work(&dev->wq, 0))
  netdev_err(dev->net, "kevent %d may have been dropped\n", work);
}

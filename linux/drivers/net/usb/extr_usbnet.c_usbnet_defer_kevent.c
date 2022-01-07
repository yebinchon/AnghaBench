
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; int kevent; int flags; } ;


 int netdev_dbg (int ,char*,int) ;
 int schedule_work (int *) ;
 int set_bit (int,int *) ;

void usbnet_defer_kevent (struct usbnet *dev, int work)
{
 set_bit (work, &dev->flags);
 if (!schedule_work (&dev->kevent))
  netdev_dbg(dev->net, "kevent %d may have been dropped\n", work);
 else
  netdev_dbg(dev->net, "kevent %d scheduled\n", work);
}

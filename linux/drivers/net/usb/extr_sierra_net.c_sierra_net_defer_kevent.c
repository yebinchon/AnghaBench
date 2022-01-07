
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sierra_net_data {int sierra_net_kevent; int kevent_flags; } ;


 int schedule_work (int *) ;
 int set_bit (int,int *) ;
 struct sierra_net_data* sierra_net_get_private (struct usbnet*) ;

__attribute__((used)) static void sierra_net_defer_kevent(struct usbnet *dev, int work)
{
 struct sierra_net_data *priv = sierra_net_get_private(dev);

 set_bit(work, &priv->kevent_flags);
 schedule_work(&priv->sierra_net_kevent);
}

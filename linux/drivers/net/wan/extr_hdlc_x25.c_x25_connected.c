
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int X25_IFACE_CONNECT ;
 int x25_connect_disconnect (struct net_device*,int,int ) ;

__attribute__((used)) static void x25_connected(struct net_device *dev, int reason)
{
 x25_connect_disconnect(dev, reason, X25_IFACE_CONNECT);
}

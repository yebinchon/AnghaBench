
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_2__ {int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct local_info {int dev; } ;
struct hostap_interface {struct local_info* local; } ;


 int ARPHRD_ETHER ;
 int SIOCGIWAP ;
 int memset (union iwreq_data*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_hw_shutdown (struct net_device*,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void prism2_suspend(struct net_device *dev)
{
 struct hostap_interface *iface;
 struct local_info *local;
 union iwreq_data wrqu;

 iface = netdev_priv(dev);
 local = iface->local;



 memset(&wrqu, 0, sizeof(wrqu));
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 wireless_send_event(local->dev, SIOCGIWAP, &wrqu, ((void*)0));


 prism2_hw_shutdown(dev, 0);
}

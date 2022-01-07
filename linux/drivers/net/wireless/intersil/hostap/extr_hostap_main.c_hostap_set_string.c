
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {int (* set_rid ) (struct net_device*,int,char**,int) ;} ;


 int MAX_SSID_LEN ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int strlen (char const*) ;
 int stub1 (struct net_device*,int,char**,int) ;

int hostap_set_string(struct net_device *dev, int rid, const char *val)
{
 struct hostap_interface *iface;
 char buf[MAX_SSID_LEN + 2];
 int len;

 iface = netdev_priv(dev);
 len = strlen(val);
 if (len > MAX_SSID_LEN)
  return -1;
 memset(buf, 0, sizeof(buf));
 buf[0] = len;
 memcpy(buf + 2, val, len);

 return iface->local->func->set_rid(dev, rid, &buf, MAX_SSID_LEN + 2);
}

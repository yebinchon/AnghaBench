
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;


 int EADDRNOTAVAIL ;
 int eth_commit_mac_addr_change (struct net_device*,void*) ;
 int eth_prepare_mac_addr_change (struct net_device*,void*) ;
 scalar_t__ possibly_iphdr (int ) ;

__attribute__((used)) static int qmi_wwan_mac_addr(struct net_device *dev, void *p)
{
 int ret;
 struct sockaddr *addr = p;

 ret = eth_prepare_mac_addr_change(dev, p);
 if (ret < 0)
  return ret;
 if (possibly_iphdr(addr->sa_data))
  return -EADDRNOTAVAIL;
 eth_commit_mac_addr_change(dev, p);
 return 0;
}

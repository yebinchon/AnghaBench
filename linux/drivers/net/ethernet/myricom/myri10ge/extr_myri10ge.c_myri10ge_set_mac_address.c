
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct myri10ge_priv {int dummy; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int myri10ge_update_mac_address (struct myri10ge_priv*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int myri10ge_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = addr;
 struct myri10ge_priv *mgp = netdev_priv(dev);
 int status;

 if (!is_valid_ether_addr(sa->sa_data))
  return -EADDRNOTAVAIL;

 status = myri10ge_update_mac_address(mgp, sa->sa_data);
 if (status != 0) {
  netdev_err(dev, "changing mac address failed with %d\n",
      status);
  return status;
 }


 memcpy(dev->dev_addr, sa->sa_data, ETH_ALEN);
 return 0;
}

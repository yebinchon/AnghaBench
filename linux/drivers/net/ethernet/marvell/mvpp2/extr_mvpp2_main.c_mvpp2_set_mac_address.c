
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int mvpp2_prs_update_mac_da (struct net_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static int mvpp2_set_mac_address(struct net_device *dev, void *p)
{
 const struct sockaddr *addr = p;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 err = mvpp2_prs_update_mac_da(dev, addr->sa_data);
 if (err) {

  mvpp2_prs_update_mac_da(dev, dev->dev_addr);
  netdev_err(dev, "failed to change MAC address\n");
 }
 return err;
}

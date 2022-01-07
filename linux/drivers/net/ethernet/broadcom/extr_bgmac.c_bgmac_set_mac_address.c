
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct bgmac {int dummy; } ;


 int bgmac_write_mac_address (struct bgmac*,int ) ;
 int eth_commit_mac_addr_change (struct net_device*,void*) ;
 int eth_prepare_mac_addr_change (struct net_device*,void*) ;
 int ether_addr_copy (int ,int ) ;
 struct bgmac* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bgmac_set_mac_address(struct net_device *net_dev, void *addr)
{
 struct bgmac *bgmac = netdev_priv(net_dev);
 struct sockaddr *sa = addr;
 int ret;

 ret = eth_prepare_mac_addr_change(net_dev, addr);
 if (ret < 0)
  return ret;

 ether_addr_copy(net_dev->dev_addr, sa->sa_data);
 bgmac_write_mac_address(bgmac, net_dev->dev_addr);

 eth_commit_mac_addr_change(net_dev, addr);
 return 0;
}

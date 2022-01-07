
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_hw_ops {int (* set_mac_address ) (struct xlgmac_pdata*,int ) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int stub1 (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static int xlgmac_set_mac_address(struct net_device *netdev, void *addr)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);
 struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
 struct sockaddr *saddr = addr;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, saddr->sa_data, netdev->addr_len);

 hw_ops->set_mac_address(pdata, netdev->dev_addr);

 return 0;
}

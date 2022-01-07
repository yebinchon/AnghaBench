
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* set_mac_address ) (struct xgbe_prv_data*,int ) ;} ;
struct xgbe_prv_data {struct xgbe_hw_if hw_if; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int DBGPR (char*) ;
 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int stub1 (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int xgbe_set_mac_address(struct net_device *netdev, void *addr)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct sockaddr *saddr = addr;

 DBGPR("-->xgbe_set_mac_address\n");

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, saddr->sa_data, netdev->addr_len);

 hw_if->set_mac_address(pdata, netdev->dev_addr);

 DBGPR("<--xgbe_set_mac_address\n");

 return 0;
}

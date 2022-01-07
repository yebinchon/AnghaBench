
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct atl1_adapter {int hw; } ;


 int atl1_read_phy_reg (int *,int,int*) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mdio_read(struct net_device *netdev, int phy_id, int reg_num)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 u16 result;

 atl1_read_phy_reg(&adapter->hw, reg_num & 0x1f, &result);

 return result;
}

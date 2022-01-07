
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mii_bus {struct lan743x_adapter* priv; } ;
struct lan743x_adapter {int dummy; } ;


 int MAC_MII_ACC ;
 int MAC_MII_DATA ;
 int MAC_MII_WRITE ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,scalar_t__) ;
 scalar_t__ lan743x_mac_mii_access (int,int,int ) ;
 int lan743x_mac_mii_wait_till_not_busy (struct lan743x_adapter*) ;

__attribute__((used)) static int lan743x_mdiobus_write(struct mii_bus *bus,
     int phy_id, int index, u16 regval)
{
 struct lan743x_adapter *adapter = bus->priv;
 u32 val, mii_access;
 int ret;


 ret = lan743x_mac_mii_wait_till_not_busy(adapter);
 if (ret < 0)
  return ret;
 val = (u32)regval;
 lan743x_csr_write(adapter, MAC_MII_DATA, val);


 mii_access = lan743x_mac_mii_access(phy_id, index, MAC_MII_WRITE);
 lan743x_csr_write(adapter, MAC_MII_ACC, mii_access);
 ret = lan743x_mac_mii_wait_till_not_busy(adapter);
 return ret;
}

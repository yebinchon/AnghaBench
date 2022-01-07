
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {struct lan743x_adapter* priv; } ;
struct lan743x_adapter {int dummy; } ;


 int MAC_MII_ACC ;
 int MAC_MII_DATA ;
 int MAC_MII_READ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_mac_mii_access (int,int,int ) ;
 int lan743x_mac_mii_wait_till_not_busy (struct lan743x_adapter*) ;

__attribute__((used)) static int lan743x_mdiobus_read(struct mii_bus *bus, int phy_id, int index)
{
 struct lan743x_adapter *adapter = bus->priv;
 u32 val, mii_access;
 int ret;


 ret = lan743x_mac_mii_wait_till_not_busy(adapter);
 if (ret < 0)
  return ret;


 mii_access = lan743x_mac_mii_access(phy_id, index, MAC_MII_READ);
 lan743x_csr_write(adapter, MAC_MII_ACC, mii_access);
 ret = lan743x_mac_mii_wait_till_not_busy(adapter);
 if (ret < 0)
  return ret;

 val = lan743x_csr_read(adapter, MAC_MII_DATA);
 return (int)(val & 0xFFFF);
}

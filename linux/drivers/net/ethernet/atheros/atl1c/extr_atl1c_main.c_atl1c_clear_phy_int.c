
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_adapter {int mdio_lock; int hw; } ;


 int MII_ISR ;
 int atl1c_read_phy_reg (int *,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void atl1c_clear_phy_int(struct atl1c_adapter *adapter)
{
 u16 phy_data;

 spin_lock(&adapter->mdio_lock);
 atl1c_read_phy_reg(&adapter->hw, MII_ISR, &phy_data);
 spin_unlock(&adapter->mdio_lock);
}

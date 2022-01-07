
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl2_adapter {int stats_lock; int hw; } ;


 int atl2_read_phy_reg (int *,int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void atl2_clear_phy_int(struct atl2_adapter *adapter)
{
 u16 phy_data;
 spin_lock(&adapter->stats_lock);
 atl2_read_phy_reg(&adapter->hw, 19, &phy_data);
 spin_unlock(&adapter->stats_lock);
}

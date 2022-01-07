
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b43_phy {int hardware_power_control; int phy_locked; int radio_locked; int txerr_cnt; int next_txpwr_check_time; } ;


 int B43_PHY_TX_BADNESS_LIMIT ;
 int atomic_set (int *,int ) ;
 int jiffies ;
 int modparam_hwpctl ;

__attribute__((used)) static void setup_struct_phy_for_init(struct b43_wldev *dev,
          struct b43_phy *phy)
{
 phy->hardware_power_control = !!modparam_hwpctl;
 phy->next_txpwr_check_time = jiffies;

 atomic_set(&phy->txerr_cnt, B43_PHY_TX_BADNESS_LIMIT);





}

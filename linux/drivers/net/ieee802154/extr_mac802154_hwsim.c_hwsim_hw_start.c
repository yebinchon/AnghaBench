
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct hwsim_phy* priv; } ;
struct hwsim_phy {int suspended; } ;



__attribute__((used)) static int hwsim_hw_start(struct ieee802154_hw *hw)
{
 struct hwsim_phy *phy = hw->priv;

 phy->suspended = 0;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct hwsim_phy* priv; } ;
struct hwsim_phy {int suspended; } ;



__attribute__((used)) static void hwsim_hw_stop(struct ieee802154_hw *hw)
{
 struct hwsim_phy *phy = hw->priv;

 phy->suspended = 1;
}

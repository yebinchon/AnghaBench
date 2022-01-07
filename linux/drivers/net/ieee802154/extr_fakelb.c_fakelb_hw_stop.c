
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct fakelb_phy* priv; } ;
struct fakelb_phy {int suspended; int list_ifup; } ;


 int fakelb_ifup_phys_lock ;
 int list_del (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void fakelb_hw_stop(struct ieee802154_hw *hw)
{
 struct fakelb_phy *phy = hw->priv;

 write_lock_bh(&fakelb_ifup_phys_lock);
 phy->suspended = 1;
 list_del(&phy->list_ifup);
 write_unlock_bh(&fakelb_ifup_phys_lock);
}

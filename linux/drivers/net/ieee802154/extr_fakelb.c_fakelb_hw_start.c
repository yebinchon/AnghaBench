
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct fakelb_phy* priv; } ;
struct fakelb_phy {int suspended; int list_ifup; } ;


 int fakelb_ifup_phys ;
 int fakelb_ifup_phys_lock ;
 int list_add (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int fakelb_hw_start(struct ieee802154_hw *hw)
{
 struct fakelb_phy *phy = hw->priv;

 write_lock_bh(&fakelb_ifup_phys_lock);
 phy->suspended = 0;
 list_add(&phy->list_ifup, &fakelb_ifup_phys);
 write_unlock_bh(&fakelb_ifup_phys_lock);

 return 0;
}

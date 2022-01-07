
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct ieee802154_hw {struct fakelb_phy* priv; } ;
struct fakelb_phy {void* channel; void* page; } ;


 int fakelb_ifup_phys_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int fakelb_hw_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct fakelb_phy *phy = hw->priv;

 write_lock_bh(&fakelb_ifup_phys_lock);
 phy->page = page;
 phy->channel = channel;
 write_unlock_bh(&fakelb_ifup_phys_lock);
 return 0;
}

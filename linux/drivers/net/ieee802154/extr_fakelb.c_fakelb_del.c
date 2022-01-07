
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fakelb_phy {int hw; int list; } ;


 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 int list_del (int *) ;

__attribute__((used)) static void fakelb_del(struct fakelb_phy *phy)
{
 list_del(&phy->list);

 ieee802154_unregister_hw(phy->hw);
 ieee802154_free_hw(phy->hw);
}

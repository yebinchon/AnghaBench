
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802154_hw {struct device* parent; int flags; TYPE_2__* phy; struct fakelb_phy* priv; } ;
struct fakelb_phy {int channel; struct ieee802154_hw* hw; int list; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int* channels; } ;
struct TYPE_4__ {int current_channel; int perm_extended_addr; TYPE_1__ supported; } ;


 int ENOMEM ;
 int IEEE802154_HW_PROMISCUOUS ;
 int fakelb_ops ;
 int fakelb_phys ;
 int fakelb_phys_lock ;
 struct ieee802154_hw* ieee802154_alloc_hw (int,int *) ;
 int ieee802154_free_hw (struct ieee802154_hw*) ;
 int ieee802154_random_extended_addr (int *) ;
 int ieee802154_register_hw (struct ieee802154_hw*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fakelb_add_one(struct device *dev)
{
 struct ieee802154_hw *hw;
 struct fakelb_phy *phy;
 int err;

 hw = ieee802154_alloc_hw(sizeof(*phy), &fakelb_ops);
 if (!hw)
  return -ENOMEM;

 phy = hw->priv;
 phy->hw = hw;


 hw->phy->supported.channels[0] |= 1;

 hw->phy->supported.channels[0] |= 0x7fe;

 hw->phy->supported.channels[0] |= 0x7FFF800;

 hw->phy->supported.channels[1] |= 1;

 hw->phy->supported.channels[1] |= 0x7fe;

 hw->phy->supported.channels[2] |= 1;

 hw->phy->supported.channels[2] |= 0x7fe;

 hw->phy->supported.channels[3] |= 0x3fff;

 hw->phy->supported.channels[4] |= 1;

 hw->phy->supported.channels[4] |= 0x1e;

 hw->phy->supported.channels[4] |= 0xffe0;

 hw->phy->supported.channels[5] |= 0xf;

 hw->phy->supported.channels[5] |= 0xf0;

 hw->phy->supported.channels[6] |= 0x3ff;

 hw->phy->supported.channels[6] |= 0x3ffc00;

 ieee802154_random_extended_addr(&hw->phy->perm_extended_addr);

 hw->phy->current_channel = 13;
 phy->channel = hw->phy->current_channel;

 hw->flags = IEEE802154_HW_PROMISCUOUS;
 hw->parent = dev;

 err = ieee802154_register_hw(hw);
 if (err)
  goto err_reg;

 mutex_lock(&fakelb_phys_lock);
 list_add_tail(&phy->list, &fakelb_phys);
 mutex_unlock(&fakelb_phys_lock);

 return 0;

err_reg:
 ieee802154_free_hw(phy->hw);
 return err;
}

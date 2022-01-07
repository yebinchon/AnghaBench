
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802154_hw {struct device* parent; int flags; TYPE_2__* phy; struct hwsim_phy* priv; } ;
struct hwsim_pib {int dummy; } ;
struct hwsim_phy {int idx; struct ieee802154_hw* hw; int list; int edges; int pib; } ;
struct genl_info {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int* channels; } ;
struct TYPE_4__ {int current_channel; int perm_extended_addr; TYPE_1__ supported; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE802154_HW_PROMISCUOUS ;
 int INIT_LIST_HEAD (int *) ;
 int hwsim_mcast_new_radio (struct genl_info*,struct hwsim_phy*) ;
 int hwsim_ops ;
 int hwsim_phys ;
 int hwsim_phys_lock ;
 int hwsim_radio_idx ;
 int hwsim_subscribe_all_others (struct hwsim_phy*) ;
 struct ieee802154_hw* ieee802154_alloc_hw (int,int *) ;
 int ieee802154_free_hw (struct ieee802154_hw*) ;
 int ieee802154_random_extended_addr (int *) ;
 int ieee802154_register_hw (struct ieee802154_hw*) ;
 int ieee802154_unregister_hw (struct ieee802154_hw*) ;
 int kfree (struct hwsim_pib*) ;
 struct hwsim_pib* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct hwsim_pib*) ;

__attribute__((used)) static int hwsim_add_one(struct genl_info *info, struct device *dev,
    bool init)
{
 struct ieee802154_hw *hw;
 struct hwsim_phy *phy;
 struct hwsim_pib *pib;
 int idx;
 int err;

 idx = hwsim_radio_idx++;

 hw = ieee802154_alloc_hw(sizeof(*phy), &hwsim_ops);
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
 pib = kzalloc(sizeof(*pib), GFP_KERNEL);
 if (!pib) {
  err = -ENOMEM;
  goto err_pib;
 }

 rcu_assign_pointer(phy->pib, pib);
 phy->idx = idx;
 INIT_LIST_HEAD(&phy->edges);

 hw->flags = IEEE802154_HW_PROMISCUOUS;
 hw->parent = dev;

 err = ieee802154_register_hw(hw);
 if (err)
  goto err_reg;

 mutex_lock(&hwsim_phys_lock);
 if (init) {
  err = hwsim_subscribe_all_others(phy);
  if (err < 0) {
   mutex_unlock(&hwsim_phys_lock);
   goto err_subscribe;
  }
 }
 list_add_tail(&phy->list, &hwsim_phys);
 mutex_unlock(&hwsim_phys_lock);

 hwsim_mcast_new_radio(info, phy);

 return idx;

err_subscribe:
 ieee802154_unregister_hw(phy->hw);
err_reg:
 kfree(pib);
err_pib:
 ieee802154_free_hw(phy->hw);
 return err;
}

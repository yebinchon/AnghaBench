
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; TYPE_2__* wlc; } ;
struct TYPE_7__ {int bus; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {TYPE_3__* d11core; } ;


 int bcma_core_pci_power_save (int ,int) ;
 int brcms_c_chipmatch (TYPE_3__*) ;
 int brcms_down (struct brcms_info*) ;
 int brcms_err (TYPE_3__*,char*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void brcms_ops_stop(struct ieee80211_hw *hw)
{
 struct brcms_info *wl = hw->priv;
 int status;

 ieee80211_stop_queues(hw);

 if (wl->wlc == ((void*)0))
  return;

 spin_lock_bh(&wl->lock);
 status = brcms_c_chipmatch(wl->wlc->hw->d11core);
 spin_unlock_bh(&wl->lock);
 if (!status) {
  brcms_err(wl->wlc->hw->d11core,
     "wl: brcms_ops_stop: chipmatch failed\n");
  return;
 }

 bcma_core_pci_power_save(wl->wlc->hw->d11core->bus, 0);


 spin_lock_bh(&wl->lock);
 brcms_down(wl);
 spin_unlock_bh(&wl->lock);
}

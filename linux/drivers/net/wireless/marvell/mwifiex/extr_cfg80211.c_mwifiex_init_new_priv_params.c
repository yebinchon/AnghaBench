
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int iftype; } ;
struct mwifiex_private {int bss_mode; void* bss_role; scalar_t__ bss_started; int netdev; TYPE_1__ wdev; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int main_locked; int rx_locked; int rx_proc_lock; int main_proc_lock; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EOPNOTSUPP ;
 int ERROR ;
 void* MWIFIEX_BSS_ROLE_STA ;
 void* MWIFIEX_BSS_ROLE_UAP ;





 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int ,int) ;
 int mwifiex_init_priv (struct mwifiex_private*) ;
 int mwifiex_init_priv_params (struct mwifiex_private*,int ) ;
 int mwifiex_set_mac_address (struct mwifiex_private*,struct net_device*,int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
mwifiex_init_new_priv_params(struct mwifiex_private *priv,
        struct net_device *dev,
        enum nl80211_iftype type)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 unsigned long flags;

 mwifiex_init_priv(priv);

 priv->bss_mode = type;
 priv->wdev.iftype = type;

 mwifiex_init_priv_params(priv, priv->netdev);
 priv->bss_started = 0;

 switch (type) {
 case 128:
 case 132:
  priv->bss_role = MWIFIEX_BSS_ROLE_STA;
  break;
 case 130:
  priv->bss_role = MWIFIEX_BSS_ROLE_STA;
  break;
 case 129:
  priv->bss_role = MWIFIEX_BSS_ROLE_UAP;
  break;
 case 131:
  priv->bss_role = MWIFIEX_BSS_ROLE_UAP;
  break;
 default:
  mwifiex_dbg(adapter, ERROR,
       "%s: changing to %d not supported\n",
       dev->name, type);
  return -EOPNOTSUPP;
 }

 spin_lock_irqsave(&adapter->main_proc_lock, flags);
 adapter->main_locked = 0;
 spin_unlock_irqrestore(&adapter->main_proc_lock, flags);

 spin_lock_bh(&adapter->rx_proc_lock);
 adapter->rx_locked = 0;
 spin_unlock_bh(&adapter->rx_proc_lock);

 mwifiex_set_mac_address(priv, dev, 0, ((void*)0));

 return 0;
}

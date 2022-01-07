
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vif_params {int dummy; } ;
struct net_device {TYPE_3__* ieee80211_ptr; int name; } ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct TYPE_5__ {scalar_t__ uap_intf; int sta_intf; int p2p_intf; } ;
struct TYPE_4__ {scalar_t__ uap_intf; } ;
struct mwifiex_adapter {TYPE_2__ curr_iface_comb; TYPE_1__ iface_limit; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_6__ {int iftype; } ;


 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_SET_BSS_MODE ;
 int INFO ;




 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 scalar_t__ mwifiex_deinit_priv_params (struct mwifiex_private*) ;
 scalar_t__ mwifiex_init_new_priv_params (struct mwifiex_private*,struct net_device*,int) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;
 scalar_t__ mwifiex_sta_init_cmd (struct mwifiex_private*,int,int) ;

__attribute__((used)) static int
mwifiex_change_vif_to_ap(struct net_device *dev,
    enum nl80211_iftype curr_iftype,
    enum nl80211_iftype type,
    struct vif_params *params)
{
 struct mwifiex_private *priv;
 struct mwifiex_adapter *adapter;

 priv = mwifiex_netdev_get_priv(dev);

 if (!priv)
  return -1;

 adapter = priv->adapter;

 if (adapter->curr_iface_comb.uap_intf ==
     adapter->iface_limit.uap_intf) {
  mwifiex_dbg(adapter, ERROR,
       "cannot create multiple AP ifaces\n");
  return -1;
 }

 mwifiex_dbg(adapter, INFO,
      "%s: changing role to AP\n", dev->name);

 if (mwifiex_deinit_priv_params(priv))
  return -1;
 if (mwifiex_init_new_priv_params(priv, dev, type))
  return -1;
 if (mwifiex_send_cmd(priv, HostCmd_CMD_SET_BSS_MODE,
        HostCmd_ACT_GEN_SET, 0, ((void*)0), 1))
  return -1;
 if (mwifiex_sta_init_cmd(priv, 0, 0))
  return -1;

 switch (curr_iftype) {
 case 130:
 case 129:
  adapter->curr_iface_comb.p2p_intf--;
  break;
 case 128:
 case 131:
  adapter->curr_iface_comb.sta_intf--;
  break;
 default:
  break;
 }

 adapter->curr_iface_comb.uap_intf++;
 dev->ieee80211_ptr->iftype = type;
 return 0;
}

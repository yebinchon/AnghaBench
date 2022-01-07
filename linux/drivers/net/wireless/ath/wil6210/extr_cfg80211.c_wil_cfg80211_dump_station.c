
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {TYPE_1__* sta; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int ENOENT ;
 int ether_addr_copy (int *,int ) ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_cid_fill_sinfo (struct wil6210_vif*,int,struct station_info*) ;
 int wil_cid_valid (struct wil6210_priv*,int) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int *,int,int ) ;
 int wil_find_cid_by_idx (struct wil6210_priv*,int ,int) ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_dump_station(struct wiphy *wiphy,
         struct net_device *dev, int idx,
         u8 *mac, struct station_info *sinfo)
{
 struct wil6210_vif *vif = ndev_to_vif(dev);
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 int rc;
 int cid = wil_find_cid_by_idx(wil, vif->mid, idx);

 if (!wil_cid_valid(wil, cid))
  return -ENOENT;

 ether_addr_copy(mac, wil->sta[cid].addr);
 wil_dbg_misc(wil, "dump_station: %pM CID %d MID %d\n", mac, cid,
       vif->mid);

 rc = wil_cid_fill_sinfo(vif, cid, sinfo);

 return rc;
}

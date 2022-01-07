
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int * mac; scalar_t__ count; } ;
struct brcmf_cfg80211_info {TYPE_1__ assoclist; struct brcmf_pub* pub; } ;
typedef scalar_t__ s32 ;


 int BRCMF_C_GET_ASSOCLIST ;
 int BRCMF_MAX_ASSOCLIST ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_cfg80211_get_station (struct wiphy*,struct net_device*,int *,struct station_info*) ;
 int brcmf_dbg (int ,char*,int) ;
 scalar_t__ brcmf_fil_cmd_data_get (struct brcmf_if*,int ,TYPE_1__*,int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (int *,int ,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static int
brcmf_cfg80211_dump_station(struct wiphy *wiphy, struct net_device *ndev,
       int idx, u8 *mac, struct station_info *sinfo)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = cfg->pub;
 s32 err;

 brcmf_dbg(TRACE, "Enter, idx %d\n", idx);

 if (idx == 0) {
  cfg->assoclist.count = cpu_to_le32(BRCMF_MAX_ASSOCLIST);
  err = brcmf_fil_cmd_data_get(ifp, BRCMF_C_GET_ASSOCLIST,
          &cfg->assoclist,
          sizeof(cfg->assoclist));
  if (err) {
   bphy_err(drvr, "BRCMF_C_GET_ASSOCLIST unsupported, err=%d\n",
     err);
   cfg->assoclist.count = 0;
   return -EOPNOTSUPP;
  }
 }
 if (idx < le32_to_cpu(cfg->assoclist.count)) {
  memcpy(mac, cfg->assoclist.mac[idx], ETH_ALEN);
  return brcmf_cfg80211_get_station(wiphy, ndev, mac, sinfo);
 }
 return -ENOENT;
}

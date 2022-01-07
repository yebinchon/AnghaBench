
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
typedef int s32 ;


 int BRCMF_FEAT_MFP ;
 int EOPNOTSUPP ;
 int INFO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 scalar_t__ brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32
brcmf_cfg80211_config_default_mgmt_key(struct wiphy *wiphy,
           struct net_device *ndev, u8 key_idx)
{
 struct brcmf_if *ifp = netdev_priv(ndev);

 brcmf_dbg(TRACE, "Enter key_idx %d\n", key_idx);

 if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MFP))
  return 0;

 brcmf_dbg(INFO, "Not supported\n");

 return -EOPNOTSUPP;
}

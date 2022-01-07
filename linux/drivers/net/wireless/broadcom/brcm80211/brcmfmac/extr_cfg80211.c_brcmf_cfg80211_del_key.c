
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_wsec_key {scalar_t__ algo; int flags; scalar_t__ index; } ;
struct brcmf_if {TYPE_2__* vif; } ;
typedef int s32 ;
struct TYPE_3__ {struct brcmf_wsec_key* key; } ;
struct TYPE_4__ {TYPE_1__ profile; } ;


 size_t BRCMF_MAX_DEFAULT_KEYS ;
 int BRCMF_PRIMARY_KEY ;
 int CONN ;
 scalar_t__ CRYPTO_ALGO_OFF ;
 int EINVAL ;
 int EIO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 int check_vif_up (TYPE_2__*) ;
 int memset (struct brcmf_wsec_key*,int ,int) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 int send_key_to_dongle (struct brcmf_if*,struct brcmf_wsec_key*) ;

__attribute__((used)) static s32
brcmf_cfg80211_del_key(struct wiphy *wiphy, struct net_device *ndev,
         u8 key_idx, bool pairwise, const u8 *mac_addr)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_wsec_key *key;
 s32 err;

 brcmf_dbg(TRACE, "Enter\n");
 brcmf_dbg(CONN, "key index (%d)\n", key_idx);

 if (!check_vif_up(ifp->vif))
  return -EIO;

 if (key_idx >= BRCMF_MAX_DEFAULT_KEYS) {

  return -EINVAL;
 }

 key = &ifp->vif->profile.key[key_idx];

 if (key->algo == CRYPTO_ALGO_OFF) {
  brcmf_dbg(CONN, "Ignore clearing of (never configured) key\n");
  return -EINVAL;
 }

 memset(key, 0, sizeof(*key));
 key->index = (u32)key_idx;
 key->flags = BRCMF_PRIMARY_KEY;


 err = send_key_to_dongle(ifp, key);

 brcmf_dbg(TRACE, "Exit\n");
 return err;
}

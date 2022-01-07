
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_7__ {int * challenge; } ;
struct TYPE_10__ {scalar_t__ last_beacon; } ;
struct TYPE_9__ {TYPE_1__ sta; TYPE_4__ ap; } ;
struct sta_info {int listen_interval; int users; int last_rx; TYPE_3__ u; scalar_t__ flags; scalar_t__ ap; int addr; struct lib80211_crypt_data* crypt; } ;
struct sk_buff {int* data; int len; } ;
struct net_device {int name; int dev_addr; } ;
struct lib80211_crypt_data {int dummy; } ;
struct ieee80211_hdr {int frame_control; int addr2; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct ap_data {scalar_t__ num_sta; int tx_callback_auth; int mac_restrictions; int sta_table_lock; } ;
struct TYPE_8__ {struct lib80211_crypt_data** crypt; } ;
struct TYPE_11__ {int auth_algs; struct ap_data* ap; TYPE_2__ crypt_info; struct net_device* dev; } ;
typedef TYPE_5__ local_info_t ;
typedef int __le16 ;


 int DEBUG_AP ;
 int HZ ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_MGMT_HDR_LEN ;
 int IEEE80211_STYPE_AUTH ;
 scalar_t__ MAX_STA_COUNT ;
 int PDEBUG (int ,char*,int ,int,...) ;
 int PRISM2_AUTH_OPEN ;
 int PRISM2_AUTH_SHARED_KEY ;
 int WLAN_AUTH_CHALLENGE_LEN ;


 scalar_t__ WLAN_EID_CHALLENGE ;
 int WLAN_STATUS_CHALLENGE_FAIL ;
 int WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ WLAN_STA_AUTH ;
 int __le16_to_cpu (int ) ;
 struct sta_info* ap_add_sta (struct ap_data*,int ) ;
 int * ap_auth_make_challenge (struct ap_data*) ;
 scalar_t__ ap_control_mac_deny (int *,int ) ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cpu_to_le16 (int) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 size_t hostap_80211_get_hdrlen (int ) ;
 int ieee80211_has_protected (int ) ;
 int jiffies ;
 int kfree (int *) ;
 int le16_to_cpu (int ) ;
 int memcmp (int *,char*,int) ;
 int memcpy (int *,int *,int) ;
 int prism2_send_mgmt (struct net_device*,int,char*,int,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void handle_authen(local_info_t *local, struct sk_buff *skb,
     struct hostap_80211_rx_status *rx_stats)
{
 struct net_device *dev = local->dev;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 size_t hdrlen;
 struct ap_data *ap = local->ap;
 char body[8 + WLAN_AUTH_CHALLENGE_LEN], *challenge = ((void*)0);
 int len, olen;
 u16 auth_alg, auth_transaction, status_code;
 __le16 *pos;
 u16 resp = WLAN_STATUS_SUCCESS;
 struct sta_info *sta = ((void*)0);
 struct lib80211_crypt_data *crypt;
 char *txt = "";

 len = skb->len - IEEE80211_MGMT_HDR_LEN;

 hdrlen = hostap_80211_get_hdrlen(hdr->frame_control);

 if (len < 6) {
  PDEBUG(DEBUG_AP, "%s: handle_authen - too short payload "
         "(len=%d) from %pM\n", dev->name, len, hdr->addr2);
  return;
 }

 spin_lock_bh(&local->ap->sta_table_lock);
 sta = ap_get_sta(local->ap, hdr->addr2);
 if (sta)
  atomic_inc(&sta->users);
 spin_unlock_bh(&local->ap->sta_table_lock);

 if (sta && sta->crypt)
  crypt = sta->crypt;
 else {
  int idx = 0;
  if (skb->len >= hdrlen + 3)
   idx = skb->data[hdrlen + 3] >> 6;
  crypt = local->crypt_info.crypt[idx];
 }

 pos = (__le16 *) (skb->data + IEEE80211_MGMT_HDR_LEN);
 auth_alg = __le16_to_cpu(*pos);
 pos++;
 auth_transaction = __le16_to_cpu(*pos);
 pos++;
 status_code = __le16_to_cpu(*pos);
 pos++;

 if (ether_addr_equal(dev->dev_addr, hdr->addr2) ||
     ap_control_mac_deny(&ap->mac_restrictions, hdr->addr2)) {
  txt = "authentication denied";
  resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
  goto fail;
 }

 if (((local->auth_algs & PRISM2_AUTH_OPEN) &&
      auth_alg == 129) ||
     ((local->auth_algs & PRISM2_AUTH_SHARED_KEY) &&
      crypt && auth_alg == 128)) {
 } else {
  txt = "unsupported algorithm";
  resp = WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;
  goto fail;
 }

 if (len >= 8) {
  u8 *u = (u8 *) pos;
  if (*u == WLAN_EID_CHALLENGE) {
   if (*(u + 1) != WLAN_AUTH_CHALLENGE_LEN) {
    txt = "invalid challenge len";
    resp = WLAN_STATUS_CHALLENGE_FAIL;
    goto fail;
   }
   if (len - 8 < WLAN_AUTH_CHALLENGE_LEN) {
    txt = "challenge underflow";
    resp = WLAN_STATUS_CHALLENGE_FAIL;
    goto fail;
   }
   challenge = (char *) (u + 2);
  }
 }

 if (sta && sta->ap) {
  if (time_after(jiffies, sta->u.ap.last_beacon +
          (10 * sta->listen_interval * HZ) / 1024)) {
   PDEBUG(DEBUG_AP, "%s: no beacons received for a while,"
          " assuming AP %pM is now STA\n",
          dev->name, sta->addr);
   sta->ap = 0;
   sta->flags = 0;
   sta->u.sta.challenge = ((void*)0);
  } else {
   txt = "AP trying to authenticate?";
   resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
   goto fail;
  }
 }

 if ((auth_alg == 129 && auth_transaction == 1) ||
     (auth_alg == 128 &&
      (auth_transaction == 1 ||
       (auth_transaction == 3 && sta != ((void*)0) &&
        sta->u.sta.challenge != ((void*)0))))) {
 } else {
  txt = "unknown authentication transaction number";
  resp = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
  goto fail;
 }

 if (sta == ((void*)0)) {
  txt = "new STA";

  if (local->ap->num_sta >= MAX_STA_COUNT) {

   txt = "no more room for new STAs";
   resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
   goto fail;
  }

  sta = ap_add_sta(local->ap, hdr->addr2);
  if (sta == ((void*)0)) {
   txt = "ap_add_sta failed";
   resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
   goto fail;
  }
 }

 switch (auth_alg) {
 case 129:
  txt = "authOK";





  sta->flags |= WLAN_STA_AUTH;
  break;

 case 128:
  if (auth_transaction == 1) {
   if (sta->u.sta.challenge == ((void*)0)) {
    sta->u.sta.challenge =
     ap_auth_make_challenge(local->ap);
    if (sta->u.sta.challenge == ((void*)0)) {
     resp = WLAN_STATUS_UNSPECIFIED_FAILURE;
     goto fail;
    }
   }
  } else {
   if (sta->u.sta.challenge == ((void*)0) ||
       challenge == ((void*)0) ||
       memcmp(sta->u.sta.challenge, challenge,
       WLAN_AUTH_CHALLENGE_LEN) != 0 ||
       !ieee80211_has_protected(hdr->frame_control)) {
    txt = "challenge response incorrect";
    resp = WLAN_STATUS_CHALLENGE_FAIL;
    goto fail;
   }

   txt = "challenge OK - authOK";





   sta->flags |= WLAN_STA_AUTH;
   kfree(sta->u.sta.challenge);
   sta->u.sta.challenge = ((void*)0);
  }
  break;
 }

 fail:
 pos = (__le16 *) body;
 *pos = cpu_to_le16(auth_alg);
 pos++;
 *pos = cpu_to_le16(auth_transaction + 1);
 pos++;
 *pos = cpu_to_le16(resp);
 pos++;
 olen = 6;

 if (resp == WLAN_STATUS_SUCCESS && sta != ((void*)0) &&
     sta->u.sta.challenge != ((void*)0) &&
     auth_alg == 128 && auth_transaction == 1) {
  u8 *tmp = (u8 *) pos;
  *tmp++ = WLAN_EID_CHALLENGE;
  *tmp++ = WLAN_AUTH_CHALLENGE_LEN;
  pos++;
  memcpy(pos, sta->u.sta.challenge, WLAN_AUTH_CHALLENGE_LEN);
  olen += 2 + WLAN_AUTH_CHALLENGE_LEN;
 }

 prism2_send_mgmt(dev, IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_AUTH,
    body, olen, hdr->addr2, ap->tx_callback_auth);

 if (sta) {
  sta->last_rx = jiffies;
  atomic_dec(&sta->users);
 }

 if (resp) {
  PDEBUG(DEBUG_AP, "%s: %pM auth (alg=%d "
         "trans#=%d stat=%d len=%d fc=%04x) ==> %d (%s)\n",
         dev->name, hdr->addr2,
         auth_alg, auth_transaction, status_code, len,
         le16_to_cpu(hdr->frame_control), resp, txt);
 }
}

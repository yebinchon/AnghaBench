
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_rx_status {int flag; } ;
struct ar9170_rx_phystatus {int dummy; } ;
struct ar9170_rx_macstatus {int status; } ;
struct ar9170_rx_head {int dummy; } ;
struct ar9170 {int rx_has_plcp; int rx_dropped; struct ar9170_rx_head rx_plcp; TYPE_1__* hw; int ampdu_ref; } ;
typedef int status ;
struct TYPE_2__ {int wiphy; } ;


 int AR9170_RX_STATUS_MPDU ;




 int BUG () ;
 int ETH_ALEN ;
 int FCS_LEN ;
 int IS_STARTED (struct ar9170*) ;
 int RX_FLAG_AMPDU_IS_LAST ;
 int RX_FLAG_NO_SIGNAL_VAL ;
 int carl9170_ampdu_check (struct ar9170*,int*,int,struct ieee80211_rx_status*) ;
 scalar_t__ carl9170_handle_mpdu (struct ar9170*,int*,int,struct ieee80211_rx_status*) ;
 int carl9170_rx_mac_status (struct ar9170*,struct ar9170_rx_head*,struct ar9170_rx_macstatus*,struct ieee80211_rx_status*) ;
 int carl9170_rx_phy_status (struct ar9170*,struct ar9170_rx_phystatus*,struct ieee80211_rx_status*) ;
 int likely (int) ;
 int memcpy (struct ar9170_rx_head*,void*,int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int net_ratelimit () ;
 scalar_t__ unlikely (int) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static void carl9170_rx_untie_data(struct ar9170 *ar, u8 *buf, int len)
{
 struct ar9170_rx_head *head;
 struct ar9170_rx_macstatus *mac;
 struct ar9170_rx_phystatus *phy = ((void*)0);
 struct ieee80211_rx_status status;
 int mpdu_len;
 u8 mac_status;

 if (!IS_STARTED(ar))
  return;

 if (unlikely(len < sizeof(*mac)))
  goto drop;

 memset(&status, 0, sizeof(status));

 mpdu_len = len - sizeof(*mac);

 mac = (void *)(buf + mpdu_len);
 mac_status = mac->status;
 switch (mac_status & AR9170_RX_STATUS_MPDU) {
 case 131:
  ar->ampdu_ref++;

  if (likely(mpdu_len >= sizeof(struct ar9170_rx_head))) {
   head = (void *) buf;
   memcpy(&ar->rx_plcp, (void *) buf,
          sizeof(struct ar9170_rx_head));

   mpdu_len -= sizeof(struct ar9170_rx_head);
   buf += sizeof(struct ar9170_rx_head);

   ar->rx_has_plcp = 1;
  } else {
   if (net_ratelimit()) {
    wiphy_err(ar->hw->wiphy, "plcp info "
     "is clipped.\n");
   }

   goto drop;
  }
  break;

 case 130:
  status.flag |= RX_FLAG_AMPDU_IS_LAST;






  if (likely(mpdu_len >= sizeof(struct ar9170_rx_phystatus))) {
   mpdu_len -= sizeof(struct ar9170_rx_phystatus);
   phy = (void *)(buf + mpdu_len);
  } else {
   if (net_ratelimit()) {
    wiphy_err(ar->hw->wiphy, "frame tail "
     "is clipped.\n");
   }

   goto drop;
  }


 case 129:

  if (unlikely(!ar->rx_has_plcp)) {
   if (!net_ratelimit())
    return;

   wiphy_err(ar->hw->wiphy, "rx stream does not start "
     "with a first_mpdu frame tag.\n");

   goto drop;
  }

  head = &ar->rx_plcp;
  break;

 case 128:

  head = (void *) buf;

  mpdu_len -= sizeof(struct ar9170_rx_head);
  mpdu_len -= sizeof(struct ar9170_rx_phystatus);

  buf += sizeof(struct ar9170_rx_head);
  phy = (void *)(buf + mpdu_len);
  break;

 default:
  BUG();
  break;
 }


 if (unlikely(mpdu_len < (2 + 2 + ETH_ALEN + FCS_LEN)))
  goto drop;

 if (unlikely(carl9170_rx_mac_status(ar, head, mac, &status)))
  goto drop;

 if (!carl9170_ampdu_check(ar, buf, mac_status, &status))
  goto drop;

 if (phy)
  carl9170_rx_phy_status(ar, phy, &status);
 else
  status.flag |= RX_FLAG_NO_SIGNAL_VAL;

 if (carl9170_handle_mpdu(ar, buf, mpdu_len, &status))
  goto drop;

 return;
drop:
 ar->rx_dropped++;
}

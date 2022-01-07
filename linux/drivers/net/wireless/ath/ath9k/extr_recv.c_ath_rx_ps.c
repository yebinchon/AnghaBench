
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; int addr1; } ;
struct ath_softc {int ps_flags; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int PS ;
 int PS_WAIT_FOR_BEACON ;
 int PS_WAIT_FOR_CAB ;
 int PS_WAIT_FOR_PSPOLL_DATA ;
 int PS_WAIT_FOR_TX_ACK ;
 scalar_t__ ath9k_check_auto_sleep (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_rx_ps_beacon (struct ath_softc*,struct sk_buff*) ;
 int ieee80211_has_moredata (int ) ;
 int ieee80211_has_morefrags (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static void ath_rx_ps(struct ath_softc *sc, struct sk_buff *skb, bool mybeacon)
{
 struct ieee80211_hdr *hdr;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 hdr = (struct ieee80211_hdr *)skb->data;


 if (((sc->ps_flags & PS_WAIT_FOR_BEACON) || ath9k_check_auto_sleep(sc))
     && mybeacon) {
  ath_rx_ps_beacon(sc, skb);
 } else if ((sc->ps_flags & PS_WAIT_FOR_CAB) &&
     (ieee80211_is_data(hdr->frame_control) ||
      ieee80211_is_action(hdr->frame_control)) &&
     is_multicast_ether_addr(hdr->addr1) &&
     !ieee80211_has_moredata(hdr->frame_control)) {




  sc->ps_flags &= ~(PS_WAIT_FOR_CAB | PS_WAIT_FOR_BEACON);
  ath_dbg(common, PS,
   "All PS CAB frames received, back to sleep\n");
 } else if ((sc->ps_flags & PS_WAIT_FOR_PSPOLL_DATA) &&
     !is_multicast_ether_addr(hdr->addr1) &&
     !ieee80211_has_morefrags(hdr->frame_control)) {
  sc->ps_flags &= ~PS_WAIT_FOR_PSPOLL_DATA;
  ath_dbg(common, PS,
   "Going back to sleep after having received PS-Poll data (0x%lx)\n",
   sc->ps_flags & (PS_WAIT_FOR_BEACON |
     PS_WAIT_FOR_CAB |
     PS_WAIT_FOR_PSPOLL_DATA |
     PS_WAIT_FOR_TX_ACK));
 }
}

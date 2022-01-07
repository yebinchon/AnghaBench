
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rxpd {int nf; int snr; } ;
struct mwifiex_private {int adapter; } ;
struct ieee80211_hdr {int* addr2; int frame_control; } ;


 int IEEE80211_FCTL_STYPE ;

 int INFO ;


 int WLAN_PUB_ACTION_TDLS_DISCOVER_RES ;
 int le16_to_cpu (int ) ;
 int mwifiex_auto_tdls_update_peer_signal (struct mwifiex_private*,int*,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

__attribute__((used)) static int
mwifiex_parse_mgmt_packet(struct mwifiex_private *priv, u8 *payload, u16 len,
     struct rxpd *rx_pd)
{
 u16 stype;
 u8 category, action_code, *addr2;
 struct ieee80211_hdr *ieee_hdr = (void *)payload;

 stype = (le16_to_cpu(ieee_hdr->frame_control) & IEEE80211_FCTL_STYPE);

 switch (stype) {
 case 130:
  category = *(payload + sizeof(struct ieee80211_hdr));
  switch (category) {
  case 128:
   action_code = *(payload + sizeof(struct ieee80211_hdr)
     + 1);
   if (action_code == WLAN_PUB_ACTION_TDLS_DISCOVER_RES) {
    addr2 = ieee_hdr->addr2;
    mwifiex_dbg(priv->adapter, INFO,
         "TDLS discovery response %pM nf=%d, snr=%d\n",
         addr2, rx_pd->nf, rx_pd->snr);
    mwifiex_auto_tdls_update_peer_signal(priv,
             addr2,
             rx_pd->snr,
             rx_pd->nf);
   }
   break;
  case 129:

   mwifiex_dbg(priv->adapter, INFO,
        "drop BACK action frames");
   return -1;
  default:
   mwifiex_dbg(priv->adapter, INFO,
        "unknown public action frame category %d\n",
        category);
  }
  break;
 default:
  mwifiex_dbg(priv->adapter, INFO,
      "unknown mgmt frame subtype %#x\n", stype);
  return 0;
 }

 return 0;
}

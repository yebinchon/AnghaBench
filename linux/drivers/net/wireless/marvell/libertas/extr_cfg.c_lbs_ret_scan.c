
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct wiphy {int dummy; } ;
struct lbs_private {TYPE_1__* wdev; } ;
struct ieee80211_channel {int flags; } ;
struct cmd_header {int size; } ;
struct cmd_ds_802_11_scan_rsp {int const bssdescriptsize; int nr_sets; int* bssdesc_and_tlvbuffer; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 int CFG80211_BSS_FTYPE_UNKNOWN ;
 int EILSEQ ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_CHAN_DISABLED ;
 int LBS_DEB_SCAN ;
 int LBS_SCAN_RSSI_TO_MBM (int) ;
 int NL80211_BAND_2GHZ ;
 int TLV_TYPE_TSFTIMESTAMP ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_SSID ;
 struct cfg80211_bss* cfg80211_inform_bss (struct wiphy*,struct ieee80211_channel*,int ,int const*,int ,void*,void*,int const*,int,int,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 void* get_unaligned_le16 (int const*) ;
 int get_unaligned_le64 (int const*) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int) ;
 int lbs_deb_hex (int ,char*,int*,int) ;
 int lbs_deb_scan (char*,...) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int lbs_ret_scan(struct lbs_private *priv, unsigned long dummy,
 struct cmd_header *resp)
{
 struct cfg80211_bss *bss;
 struct cmd_ds_802_11_scan_rsp *scanresp = (void *)resp;
 int bsssize;
 const u8 *pos;
 const u8 *tsfdesc;
 int tsfsize;
 int i;
 int ret = -EILSEQ;

 bsssize = get_unaligned_le16(&scanresp->bssdescriptsize);

 lbs_deb_scan("scan response: %d BSSs (%d bytes); resp size %d bytes\n",
   scanresp->nr_sets, bsssize, le16_to_cpu(resp->size));

 if (scanresp->nr_sets == 0) {
  ret = 0;
  goto done;
 }
 pos = scanresp->bssdesc_and_tlvbuffer;

 lbs_deb_hex(LBS_DEB_SCAN, "SCAN_RSP", scanresp->bssdesc_and_tlvbuffer,
   scanresp->bssdescriptsize);

 tsfdesc = pos + bsssize;
 tsfsize = 4 + 8 * scanresp->nr_sets;
 lbs_deb_hex(LBS_DEB_SCAN, "SCAN_TSF", (u8 *) tsfdesc, tsfsize);


 i = get_unaligned_le16(tsfdesc);
 tsfdesc += 2;
 if (i != TLV_TYPE_TSFTIMESTAMP) {
  lbs_deb_scan("scan response: invalid TSF Timestamp %d\n", i);
  goto done;
 }





 i = get_unaligned_le16(tsfdesc);
 tsfdesc += 2;
 if (i / 8 != scanresp->nr_sets) {
  lbs_deb_scan("scan response: invalid number of TSF timestamp "
        "sets (expected %d got %d)\n", scanresp->nr_sets,
        i / 8);
  goto done;
 }

 for (i = 0; i < scanresp->nr_sets; i++) {
  const u8 *bssid;
  const u8 *ie;
  int left;
  int ielen;
  int rssi;
  u16 intvl;
  u16 capa;
  int chan_no = -1;
  const u8 *ssid = ((void*)0);
  u8 ssid_len = 0;

  int len = get_unaligned_le16(pos);
  pos += 2;


  bssid = pos;
  pos += ETH_ALEN;

  rssi = *pos++;

  pos += 8;

  intvl = get_unaligned_le16(pos);
  pos += 2;

  capa = get_unaligned_le16(pos);
  pos += 2;


  ie = pos;




  ielen = left = len - (6 + 1 + 8 + 2 + 2);
  while (left >= 2) {
   u8 id, elen;
   id = *pos++;
   elen = *pos++;
   left -= 2;
   if (elen > left) {
    lbs_deb_scan("scan response: invalid IE fmt\n");
    goto done;
   }

   if (id == WLAN_EID_DS_PARAMS)
    chan_no = *pos;
   if (id == WLAN_EID_SSID) {
    ssid = pos;
    ssid_len = elen;
   }
   left -= elen;
   pos += elen;
  }


  if (chan_no != -1) {
   struct wiphy *wiphy = priv->wdev->wiphy;
   int freq = ieee80211_channel_to_frequency(chan_no,
       NL80211_BAND_2GHZ);
   struct ieee80211_channel *channel =
    ieee80211_get_channel(wiphy, freq);

   lbs_deb_scan("scan: %pM, capa %04x, chan %2d, %*pE, %d dBm\n",
         bssid, capa, chan_no, ssid_len, ssid,
         LBS_SCAN_RSSI_TO_MBM(rssi)/100);

   if (channel &&
       !(channel->flags & IEEE80211_CHAN_DISABLED)) {
    bss = cfg80211_inform_bss(wiphy, channel,
     CFG80211_BSS_FTYPE_UNKNOWN,
     bssid, get_unaligned_le64(tsfdesc),
     capa, intvl, ie, ielen,
     LBS_SCAN_RSSI_TO_MBM(rssi),
     GFP_KERNEL);
    cfg80211_put_bss(wiphy, bss);
   }
  } else
   lbs_deb_scan("scan response: missing BSS channel IE\n");

  tsfdesc += 8;
 }
 ret = 0;

 done:
 return ret;
}

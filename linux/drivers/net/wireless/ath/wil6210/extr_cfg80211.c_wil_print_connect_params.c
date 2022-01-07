
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil6210_priv {int dummy; } ;
struct cfg80211_connect_params {char* bssid; char* prev_bssid; char* pbss; int crypto; scalar_t__ privacy; int auth_type; int ssid_len; scalar_t__ ssid; TYPE_1__* channel; } ;
struct TYPE_2__ {int center_freq; int hw_value; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int print_hex_dump (int ,char*,int ,int,int,scalar_t__,int ,int) ;
 char* wil_get_auth_type_name (int ) ;
 int wil_info (struct wil6210_priv*,char*,...) ;
 int wil_print_crypto (struct wil6210_priv*,int *) ;

__attribute__((used)) static void wil_print_connect_params(struct wil6210_priv *wil,
         struct cfg80211_connect_params *sme)
{
 wil_info(wil, "Connecting to:\n");
 if (sme->channel) {
  wil_info(wil, "  Channel: %d freq %d\n",
    sme->channel->hw_value, sme->channel->center_freq);
 }
 if (sme->bssid)
  wil_info(wil, "  BSSID: %pM\n", sme->bssid);
 if (sme->ssid)
  print_hex_dump(KERN_INFO, "  SSID: ", DUMP_PREFIX_OFFSET,
          16, 1, sme->ssid, sme->ssid_len, 1);
 if (sme->prev_bssid)
  wil_info(wil, "  Previous BSSID=%pM\n", sme->prev_bssid);
 wil_info(wil, "  Auth Type: %s\n",
   wil_get_auth_type_name(sme->auth_type));
 wil_info(wil, "  Privacy: %s\n", sme->privacy ? "secure" : "open");
 wil_info(wil, "  PBSS: %d\n", sme->pbss);
 wil_print_crypto(wil, &sme->crypto);
}

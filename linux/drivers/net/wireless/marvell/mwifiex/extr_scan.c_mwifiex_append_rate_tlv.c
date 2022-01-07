
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mwifiex_scan_cmd_config {int tlv_buf_len; scalar_t__ tlv_buf; } ;
struct mwifiex_private {int adapter; scalar_t__ scan_request; } ;
struct TYPE_2__ {void* len; void* type; } ;
struct mwifiex_ie_types_rates_param_set {int rates; TYPE_1__ header; } ;
typedef int rates ;


 int CMD ;
 int MWIFIEX_SUPPORTED_RATES ;
 int WLAN_EID_SUPP_RATES ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int ,int *,int) ;
 int memset (int *,int ,int) ;
 int mwifiex_dbg (int ,int ,char*,int) ;
 int mwifiex_get_rates_from_cfg80211 (struct mwifiex_private*,int *,int ) ;
 int mwifiex_get_supported_rates (struct mwifiex_private*,int *) ;

__attribute__((used)) static int
mwifiex_append_rate_tlv(struct mwifiex_private *priv,
   struct mwifiex_scan_cmd_config *scan_cfg_out,
   u8 radio)
{
 struct mwifiex_ie_types_rates_param_set *rates_tlv;
 u8 rates[MWIFIEX_SUPPORTED_RATES], *tlv_pos;
 u32 rates_size;

 memset(rates, 0, sizeof(rates));

 tlv_pos = (u8 *)scan_cfg_out->tlv_buf + scan_cfg_out->tlv_buf_len;

 if (priv->scan_request)
  rates_size = mwifiex_get_rates_from_cfg80211(priv, rates,
            radio);
 else
  rates_size = mwifiex_get_supported_rates(priv, rates);

 mwifiex_dbg(priv->adapter, CMD,
      "info: SCAN_CMD: Rates size = %d\n",
  rates_size);
 rates_tlv = (struct mwifiex_ie_types_rates_param_set *)tlv_pos;
 rates_tlv->header.type = cpu_to_le16(WLAN_EID_SUPP_RATES);
 rates_tlv->header.len = cpu_to_le16((u16) rates_size);
 memcpy(rates_tlv->rates, rates, rates_size);
 scan_cfg_out->tlv_buf_len += sizeof(rates_tlv->header) + rates_size;

 return rates_size;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ erp_flags; scalar_t__ beacon_period; int mac_address; } ;
struct TYPE_6__ {TYPE_2__ bss_descriptor; } ;
struct mwifiex_private {int adhoc_state; TYPE_3__ curr_bss_params; int adapter; } ;
struct host_cmd_ds_802_11_ibss_status {int use_g_rate_protect; int beacon_interval; int bssid; int action; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11_ibss_status ibss_coalescing; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int ADHOC_COALESCED ;
 int ETH_ALEN ;
 int FATAL ;
 scalar_t__ HostCmd_ACT_GEN_SET ;
 int INFO ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

__attribute__((used)) static int mwifiex_ret_ibss_coalescing_status(struct mwifiex_private *priv,
           struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_802_11_ibss_status *ibss_coal_resp =
     &(resp->params.ibss_coalescing);

 if (le16_to_cpu(ibss_coal_resp->action) == HostCmd_ACT_GEN_SET)
  return 0;

 mwifiex_dbg(priv->adapter, INFO,
      "info: new BSSID %pM\n", ibss_coal_resp->bssid);


 if (is_zero_ether_addr(ibss_coal_resp->bssid)) {
  mwifiex_dbg(priv->adapter, FATAL, "new BSSID is NULL\n");
  return 0;
 }


 if (!ether_addr_equal(priv->curr_bss_params.bss_descriptor.mac_address, ibss_coal_resp->bssid)) {

  memcpy(priv->curr_bss_params.bss_descriptor.mac_address,
         ibss_coal_resp->bssid, ETH_ALEN);


  priv->curr_bss_params.bss_descriptor.beacon_period
   = le16_to_cpu(ibss_coal_resp->beacon_interval);


  priv->curr_bss_params.bss_descriptor.erp_flags =
   (u8) le16_to_cpu(ibss_coal_resp->use_g_rate_protect);

  priv->adhoc_state = ADHOC_COALESCED;
 }

 return 0;
}

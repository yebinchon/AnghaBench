
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef scalar_t__ u8 ;
struct atmel_private {int fast_scan; int CurrentAuthentTransactionSeqNum; int exclude_unencrypted; int wep_is_on; int management_timer; int AuthenticationRequestRetryCnt; int station_is_associated; int station_was_associated; int operating_mode; int dev; void* site_survey_state; int SSID_size; scalar_t__ CurrentBSSID; } ;


 int BSS_TYPE_AD_HOC ;
 int CMD_BLOCK_COMMAND_OFFSET ;
 int CMD_BLOCK_STATUS_OFFSET ;

 scalar_t__ CMD_STATUS_COMPLETE ;
 scalar_t__ CMD_STATUS_IDLE ;
 scalar_t__ CMD_STATUS_IN_PROGRESS ;



 int IW_MODE_ADHOC ;
 int MAC_MGMT_MIB_CUR_BSSID_POS ;
 scalar_t__ MGMT_JIFFIES ;
 int Mac_Mgmt_Mib_Type ;
 int SIOCGIWSCAN ;
 void* SITE_SURVEY_COMPLETED ;
 int STATION_STATE_AUTHENTICATING ;
 int STATION_STATE_READY ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SHARED_KEY ;
 int atmel_co (struct atmel_private*,int ) ;
 int atmel_enter_state (struct atmel_private*,int ) ;
 int atmel_get_mib (struct atmel_private*,int ,int ,scalar_t__*,int) ;
 int atmel_join_bss (struct atmel_private*,int) ;
 scalar_t__ atmel_rmem8 (struct atmel_private*,int ) ;
 int atmel_scan (struct atmel_private*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int retrieve_bss (struct atmel_private*) ;
 int send_authentication_request (struct atmel_private*,int,int *,int ) ;
 int start (struct atmel_private*,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void atmel_command_irq(struct atmel_private *priv)
{
 u8 status = atmel_rmem8(priv, atmel_co(priv, CMD_BLOCK_STATUS_OFFSET));
 u8 command = atmel_rmem8(priv, atmel_co(priv, CMD_BLOCK_COMMAND_OFFSET));
 int fast_scan;
 union iwreq_data wrqu;

 if (status == CMD_STATUS_IDLE ||
     status == CMD_STATUS_IN_PROGRESS)
  return;

 switch (command) {
 case 128:
  if (status == CMD_STATUS_COMPLETE) {
   priv->station_was_associated = priv->station_is_associated;
   atmel_get_mib(priv, Mac_Mgmt_Mib_Type, MAC_MGMT_MIB_CUR_BSSID_POS,
          (u8 *)priv->CurrentBSSID, 6);
   atmel_enter_state(priv, STATION_STATE_READY);
  }
  break;

 case 130:
  fast_scan = priv->fast_scan;
  priv->fast_scan = 0;

  if (status != CMD_STATUS_COMPLETE) {
   atmel_scan(priv, 1);
  } else {
   int bss_index = retrieve_bss(priv);
   int notify_scan_complete = 1;
   if (bss_index != -1) {
    atmel_join_bss(priv, bss_index);
   } else if (priv->operating_mode == IW_MODE_ADHOC &&
       priv->SSID_size != 0) {
    start(priv, BSS_TYPE_AD_HOC);
   } else {
    priv->fast_scan = !fast_scan;
    atmel_scan(priv, 1);
    notify_scan_complete = 0;
   }
   priv->site_survey_state = SITE_SURVEY_COMPLETED;
   if (notify_scan_complete) {
    wrqu.data.length = 0;
    wrqu.data.flags = 0;
    wireless_send_event(priv->dev, SIOCGIWSCAN, &wrqu, ((void*)0));
   }
  }
  break;

 case 129:
  priv->fast_scan = 0;

  if (status != CMD_STATUS_COMPLETE)
   return;

  priv->site_survey_state = SITE_SURVEY_COMPLETED;
  if (priv->station_is_associated) {
   atmel_enter_state(priv, STATION_STATE_READY);
   wrqu.data.length = 0;
   wrqu.data.flags = 0;
   wireless_send_event(priv->dev, SIOCGIWSCAN, &wrqu, ((void*)0));
  } else {
   atmel_scan(priv, 1);
  }
  break;

 case 131:
  if (status == CMD_STATUS_COMPLETE) {
   if (priv->operating_mode == IW_MODE_ADHOC) {
    priv->station_was_associated = priv->station_is_associated;
    atmel_enter_state(priv, STATION_STATE_READY);
   } else {
    int auth = WLAN_AUTH_OPEN;
    priv->AuthenticationRequestRetryCnt = 0;
    atmel_enter_state(priv, STATION_STATE_AUTHENTICATING);

    mod_timer(&priv->management_timer, jiffies + MGMT_JIFFIES);
    priv->CurrentAuthentTransactionSeqNum = 0x0001;
    if (priv->wep_is_on && priv->exclude_unencrypted)
     auth = WLAN_AUTH_SHARED_KEY;
    send_authentication_request(priv, auth, ((void*)0), 0);
   }
   return;
  }

  atmel_scan(priv, 1);
 }
}

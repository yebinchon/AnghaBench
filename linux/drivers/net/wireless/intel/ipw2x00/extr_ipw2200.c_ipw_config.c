
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int accept_all_data_frames; int accept_non_directed_frames; int accept_all_mgmt_bcpr; int accept_all_mgmt_frames; int answer_broadcast_ssid_probe; int bt_coexistence; } ;
struct ipw_priv {unsigned char* eeprom; int capability; TYPE_3__* ieee; scalar_t__ notif_missed_beacons; int status; scalar_t__ rts_threshold; int rates; TYPE_4__ sys_config; scalar_t__ prom_net_dev; TYPE_1__* net_dev; } ;
struct TYPE_6__ {scalar_t__ level; } ;
struct TYPE_7__ {scalar_t__ iw_mode; scalar_t__ host_decrypt; scalar_t__ host_encrypt; TYPE_2__ sec; } ;
struct TYPE_5__ {int dev_addr; } ;


 int CAP_PRIVACY_ON ;
 int CFG_BT_COEXISTENCE_OOB ;
 int CFG_BT_COEXISTENCE_SIGNAL_CHNL ;
 size_t EEPROM_SKU_CAPABILITY ;
 unsigned char EEPROM_SKU_CAP_BT_CHANNEL_SIG ;
 unsigned char EEPROM_SKU_CAP_BT_OOB ;
 int EIO ;
 int IPW_DEBUG_QOS (char*) ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ SEC_LEVEL_1 ;
 int STATUS_INIT ;
 scalar_t__ bt_coexist ;
 int init_supported_rates (struct ipw_priv*,int *) ;
 int init_sys_config (TYPE_4__*) ;
 int ipw_led_init (struct ipw_priv*) ;
 int ipw_led_radio_on (struct ipw_priv*) ;
 int ipw_qos_activate (struct ipw_priv*,int *) ;
 scalar_t__ ipw_send_adapter_address (struct ipw_priv*,int ) ;
 scalar_t__ ipw_send_host_complete (struct ipw_priv*) ;
 scalar_t__ ipw_send_rts_threshold (struct ipw_priv*,scalar_t__) ;
 scalar_t__ ipw_send_supported_rates (struct ipw_priv*,int *) ;
 scalar_t__ ipw_send_system_config (struct ipw_priv*) ;
 int ipw_set_hwcrypto_keys (struct ipw_priv*) ;
 scalar_t__ ipw_set_random_seed (struct ipw_priv*) ;
 scalar_t__ ipw_set_tx_power (struct ipw_priv*) ;
 scalar_t__ netif_running (scalar_t__) ;

__attribute__((used)) static int ipw_config(struct ipw_priv *priv)
{



 if (ipw_set_tx_power(priv))
  goto error;


 if (ipw_send_adapter_address(priv, priv->net_dev->dev_addr))
  goto error;


 init_sys_config(&priv->sys_config);



 if (bt_coexist) {
  unsigned char bt_caps = priv->eeprom[EEPROM_SKU_CAPABILITY];

  if (bt_caps & EEPROM_SKU_CAP_BT_CHANNEL_SIG)
   priv->sys_config.bt_coexistence
       |= CFG_BT_COEXISTENCE_SIGNAL_CHNL;
  if (bt_caps & EEPROM_SKU_CAP_BT_OOB)
   priv->sys_config.bt_coexistence
       |= CFG_BT_COEXISTENCE_OOB;
 }
 if (priv->ieee->iw_mode == IW_MODE_ADHOC)
  priv->sys_config.answer_broadcast_ssid_probe = 1;
 else
  priv->sys_config.answer_broadcast_ssid_probe = 0;

 if (ipw_send_system_config(priv))
  goto error;

 init_supported_rates(priv, &priv->rates);
 if (ipw_send_supported_rates(priv, &priv->rates))
  goto error;


 if (priv->rts_threshold) {
  if (ipw_send_rts_threshold(priv, priv->rts_threshold))
   goto error;
 }





 if (ipw_set_random_seed(priv))
  goto error;


 if (ipw_send_host_complete(priv))
  goto error;

 priv->status |= STATUS_INIT;

 ipw_led_init(priv);
 ipw_led_radio_on(priv);
 priv->notif_missed_beacons = 0;


 if ((priv->capability & CAP_PRIVACY_ON) &&
     (priv->ieee->sec.level == SEC_LEVEL_1) &&
     !(priv->ieee->host_encrypt || priv->ieee->host_decrypt))
  ipw_set_hwcrypto_keys(priv);

 return 0;

      error:
 return -EIO;
}

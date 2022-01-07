
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int sw_beacon_response_time; } ;
struct ath_hw {int imask; TYPE_1__ config; } ;
struct ath_beacon_config {int intval; int nexttbtt; } ;
struct TYPE_4__ {scalar_t__ bmisscnt; } ;
struct ath9k_htc_priv {TYPE_2__ beacon; struct ath_hw* ah; } ;
typedef int __be32 ;


 int DEFAULT_SWBA_RESPONSE ;
 int MIN_SWBA_RESPONSE ;
 int TU_TO_USEC (int ) ;
 int WMI_CMD (int ) ;
 int WMI_CMD_BUF (int ,int *) ;
 int WMI_DISABLE_INTR_CMDID ;
 int WMI_ENABLE_INTR_CMDID ;
 int ath9k_htc_beaconq_config (struct ath9k_htc_priv*) ;
 int ath9k_hw_beaconinit (struct ath_hw*,int ,int ) ;
 int ath9k_hw_reset_tsf (struct ath_hw*) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void ath9k_htc_beacon_init(struct ath9k_htc_priv *priv,
      struct ath_beacon_config *conf,
      bool reset_tsf)
{
 struct ath_hw *ah = priv->ah;
 int ret __attribute__ ((unused));
 __be32 htc_imask = 0;
 u8 cmd_rsp;

 if (conf->intval >= TU_TO_USEC(DEFAULT_SWBA_RESPONSE))
  ah->config.sw_beacon_response_time = DEFAULT_SWBA_RESPONSE;
 else
  ah->config.sw_beacon_response_time = MIN_SWBA_RESPONSE;

 WMI_CMD(WMI_DISABLE_INTR_CMDID);
 if (reset_tsf)
  ath9k_hw_reset_tsf(ah);
 ath9k_htc_beaconq_config(priv);
 ath9k_hw_beaconinit(ah, conf->nexttbtt, conf->intval);
 priv->beacon.bmisscnt = 0;
 htc_imask = cpu_to_be32(ah->imask);
 WMI_CMD_BUF(WMI_ENABLE_INTR_CMDID, &htc_imask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {scalar_t__ imask; } ;
struct ath_beacon_config {int dummy; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;


 int ATH9K_HTC_MAX_BCN_VIF ;
 int ath9k_cmn_beacon_config_ap (struct ath_hw*,struct ath_beacon_config*,int ) ;
 int ath9k_htc_beacon_init (struct ath9k_htc_priv*,struct ath_beacon_config*,int) ;

__attribute__((used)) static void ath9k_htc_beacon_config_ap(struct ath9k_htc_priv *priv,
           struct ath_beacon_config *conf)
{
 struct ath_hw *ah = priv->ah;
 ah->imask = 0;

 ath9k_cmn_beacon_config_ap(ah, conf, ATH9K_HTC_MAX_BCN_VIF);
 ath9k_htc_beacon_init(priv, conf, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {scalar_t__ imask; } ;
struct ath_beacon_config {int ibss_creator; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;


 int ath9k_cmn_beacon_config_adhoc (struct ath_hw*,struct ath_beacon_config*) ;
 int ath9k_htc_beacon_init (struct ath9k_htc_priv*,struct ath_beacon_config*,int ) ;

__attribute__((used)) static void ath9k_htc_beacon_config_adhoc(struct ath9k_htc_priv *priv,
       struct ath_beacon_config *conf)
{
 struct ath_hw *ah = priv->ah;
 ah->imask = 0;

 ath9k_cmn_beacon_config_adhoc(ah, conf);
 ath9k_htc_beacon_init(priv, conf, conf->ibss_creator);
}

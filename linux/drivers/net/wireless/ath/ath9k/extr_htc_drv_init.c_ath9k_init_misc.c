
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_common {int last_rssi; int bssidmask; } ;
struct TYPE_4__ {int short_repeat; int count; int endless; int period; int fft_period; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__ spec_config; TYPE_3__* ah; } ;
struct ath9k_htc_priv {TYPE_2__ spec_priv; TYPE_3__* ah; } ;
struct TYPE_6__ {int opmode; } ;


 int ATH_RSSI_DUMMY_MARKER ;
 int NL80211_IFTYPE_STATION ;
 struct ath_common* ath9k_hw_common (TYPE_3__*) ;
 int eth_broadcast_addr (int ) ;

__attribute__((used)) static void ath9k_init_misc(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);

 eth_broadcast_addr(common->bssidmask);

 common->last_rssi = ATH_RSSI_DUMMY_MARKER;
 priv->ah->opmode = NL80211_IFTYPE_STATION;

 priv->spec_priv.ah = priv->ah;
 priv->spec_priv.spec_config.enabled = 0;
 priv->spec_priv.spec_config.short_repeat = 1;
 priv->spec_priv.spec_config.count = 8;
 priv->spec_priv.spec_config.endless = 0;
 priv->spec_priv.spec_config.period = 0x12;
 priv->spec_priv.spec_config.fft_period = 0x02;
}

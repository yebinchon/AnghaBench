
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath9k_htc_priv {TYPE_3__* hw; TYPE_2__* ah; } ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_4__ {int hw_caps; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_RFSILENT ;
 int wiphy_rfkill_start_polling (int ) ;

void ath9k_start_rfkill_poll(struct ath9k_htc_priv *priv)
{
 if (priv->ah->caps.hw_caps & ATH9K_HW_CAP_RFSILENT)
  wiphy_rfkill_start_polling(priv->hw->wiphy);
}

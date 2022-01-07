
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {int rx_ant; int tx_ant; } ;
struct ath6kl {TYPE_1__ hw; } ;


 struct ath6kl* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ath6kl_get_antenna(struct wiphy *wiphy,
         u32 *tx_ant, u32 *rx_ant)
{
 struct ath6kl *ar = wiphy_priv(wiphy);
 *tx_ant = ar->hw.tx_ant;
 *rx_ant = ar->hw.rx_ant;
 return 0;
}

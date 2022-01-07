
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_3__ {int concur_tx; } ;
struct TYPE_4__ {TYPE_1__ mci; } ;
struct ath_hw {TYPE_2__ btcoex_hw; } ;


 int ATH_BTCOEX_HT20_MAX_TXPOWER ;
 int ATH_BTCOEX_HT40_MAX_TXPOWER ;
 scalar_t__ CTL_2GHT20 ;
 scalar_t__ CTL_2GHT40 ;

u16 ar9003_mci_get_max_txpower(struct ath_hw *ah, u8 ctlmode)
{
 if (!ah->btcoex_hw.mci.concur_tx)
  goto out;

 if (ctlmode == CTL_2GHT20)
  return ATH_BTCOEX_HT20_MAX_TXPOWER;
 else if (ctlmode == CTL_2GHT40)
  return ATH_BTCOEX_HT40_MAX_TXPOWER;

out:
 return -1;
}

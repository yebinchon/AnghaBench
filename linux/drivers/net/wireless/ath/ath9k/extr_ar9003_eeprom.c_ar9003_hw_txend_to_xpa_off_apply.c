
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int txEndToXpaOff; } ;


 int AR_PHY_XPA_TIMING_CTL ;
 int AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF ;
 int AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;

__attribute__((used)) static void ar9003_hw_txend_to_xpa_off_apply(struct ath_hw *ah, bool is2ghz)
{
 u32 value;

 value = ar9003_modal_header(ah, is2ghz)->txEndToXpaOff;

 REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
        AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF, value);
 REG_RMW_FIELD(ah, AR_PHY_XPA_TIMING_CTL,
        AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF, value);
}

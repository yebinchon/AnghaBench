
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY_RTT_CTRL ;
 int AR_PHY_RTT_CTRL_RESTORE_MASK ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;

void ar9003_hw_rtt_set_mask(struct ath_hw *ah, u32 rtt_mask)
{
 REG_RMW_FIELD(ah, AR_PHY_RTT_CTRL,
        AR_PHY_RTT_CTRL_RESTORE_MASK, rtt_mask);
}

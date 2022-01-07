
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_RTT_CTRL ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ar9003_hw_rtt_disable(struct ath_hw *ah)
{
 REG_WRITE(ah, AR_PHY_RTT_CTRL, 0);
}

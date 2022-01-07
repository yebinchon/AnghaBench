
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_ACTIVE ;
 int AR_PHY_ACTIVE_DIS ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar5008_hw_mark_phy_inactive(struct ath_hw *ah)
{
 REG_WRITE(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_DIS);
}

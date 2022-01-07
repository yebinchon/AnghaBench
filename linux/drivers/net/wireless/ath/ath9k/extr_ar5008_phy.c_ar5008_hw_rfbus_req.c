
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_RFBUS_GRANT ;
 int AR_PHY_RFBUS_GRANT_EN ;
 int AR_PHY_RFBUS_REQ ;
 int AR_PHY_RFBUS_REQ_EN ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;

__attribute__((used)) static bool ar5008_hw_rfbus_req(struct ath_hw *ah)
{
 REG_WRITE(ah, AR_PHY_RFBUS_REQ, AR_PHY_RFBUS_REQ_EN);
 return ath9k_hw_wait(ah, AR_PHY_RFBUS_GRANT, AR_PHY_RFBUS_GRANT_EN,
      AR_PHY_RFBUS_GRANT_EN, AH_WAIT_TIMEOUT);
}

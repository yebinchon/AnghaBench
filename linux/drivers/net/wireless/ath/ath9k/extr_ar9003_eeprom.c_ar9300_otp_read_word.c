
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 scalar_t__ AR9300_OTP_BASE ;
 scalar_t__ AR9300_OTP_READ_DATA ;
 int AR9300_OTP_STATUS ;
 int AR9300_OTP_STATUS_TYPE ;
 int AR9300_OTP_STATUS_VALID ;
 int REG_READ (struct ath_hw*,scalar_t__) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int) ;

__attribute__((used)) static bool ar9300_otp_read_word(struct ath_hw *ah, int addr, u32 *data)
{
 REG_READ(ah, AR9300_OTP_BASE + (4 * addr));

 if (!ath9k_hw_wait(ah, AR9300_OTP_STATUS, AR9300_OTP_STATUS_TYPE,
      AR9300_OTP_STATUS_VALID, 1000))
  return 0;

 *data = REG_READ(ah, AR9300_OTP_READ_DATA);
 return 1;
}

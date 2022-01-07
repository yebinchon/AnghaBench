
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int OTP_ADDRESS ;
 int OTP_ADDRESS_MAGIC1 ;
 int OTP_ADDRESS_MAGIC2 ;
 int OTP_CTRL_OTP_CMD_INIT ;
 int OTP_CTRL_OTP_CMD_READ ;
 int OTP_MODE ;
 int OTP_MODE_OTP_THRU_GRC ;
 int OTP_READ_DATA ;
 scalar_t__ tg3_issue_otp_command (struct tg3*,int ) ;
 int tr32 (int ) ;
 int tw32 (int ,int ) ;

__attribute__((used)) static u32 tg3_read_otp_phycfg(struct tg3 *tp)
{
 u32 bhalf_otp, thalf_otp;

 tw32(OTP_MODE, OTP_MODE_OTP_THRU_GRC);

 if (tg3_issue_otp_command(tp, OTP_CTRL_OTP_CMD_INIT))
  return 0;

 tw32(OTP_ADDRESS, OTP_ADDRESS_MAGIC1);

 if (tg3_issue_otp_command(tp, OTP_CTRL_OTP_CMD_READ))
  return 0;

 thalf_otp = tr32(OTP_READ_DATA);

 tw32(OTP_ADDRESS, OTP_ADDRESS_MAGIC2);

 if (tg3_issue_otp_command(tp, OTP_CTRL_OTP_CMD_READ))
  return 0;

 bhalf_otp = tr32(OTP_READ_DATA);

 return ((thalf_otp & 0x0000ffff) << 16) | (bhalf_otp >> 16);
}

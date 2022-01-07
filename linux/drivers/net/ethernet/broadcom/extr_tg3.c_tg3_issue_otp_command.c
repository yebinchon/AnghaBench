
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int EBUSY ;
 int OTP_CTRL ;
 int OTP_CTRL_OTP_CMD_START ;
 int OTP_STATUS ;
 int OTP_STATUS_CMD_DONE ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_issue_otp_command(struct tg3 *tp, u32 cmd)
{
 int i;
 u32 val;

 tw32(OTP_CTRL, cmd | OTP_CTRL_OTP_CMD_START);
 tw32(OTP_CTRL, cmd);


 for (i = 0; i < 100; i++) {
  val = tr32(OTP_STATUS);
  if (val & OTP_STATUS_CMD_DONE)
   break;
  udelay(10);
 }

 return (val & OTP_STATUS_CMD_DONE) ? 0 : -EBUSY;
}

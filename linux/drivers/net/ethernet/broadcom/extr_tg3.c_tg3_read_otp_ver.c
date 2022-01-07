
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tg3 {int * fw_ver; } ;


 scalar_t__ ASIC_REV_5762 ;
 scalar_t__ OTP_ADDRESS_MAGIC0 ;
 scalar_t__ TG3_OTP_MAGIC0_VALID (int) ;
 scalar_t__ TG3_VER_SIZE ;
 int snprintf (int *,scalar_t__,char*,int) ;
 int strlen (int *) ;
 int tg3_ape_otp_read (struct tg3*,scalar_t__,int*) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static void tg3_read_otp_ver(struct tg3 *tp)
{
 u32 val, val2;

 if (tg3_asic_rev(tp) != ASIC_REV_5762)
  return;

 if (!tg3_ape_otp_read(tp, OTP_ADDRESS_MAGIC0, &val) &&
     !tg3_ape_otp_read(tp, OTP_ADDRESS_MAGIC0 + 4, &val2) &&
     TG3_OTP_MAGIC0_VALID(val)) {
  u64 val64 = (u64) val << 32 | val2;
  u32 ver = 0;
  int i, vlen;

  for (i = 0; i < 7; i++) {
   if ((val64 & 0xff) == 0)
    break;
   ver = val64 & 0xff;
   val64 >>= 8;
  }
  vlen = strlen(tp->fw_ver);
  snprintf(&tp->fw_ver[vlen], TG3_VER_SIZE - vlen, " .%02d", ver);
 }
}

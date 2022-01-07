
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int APE_FW_STATUS_READY ;
 int APE_HAS_NCSI ;
 int APE_SEG_SIG_MAGIC ;
 int TG3_APE_FW_FEATURES ;
 int TG3_APE_FW_FEATURE_NCSI ;
 int TG3_APE_FW_STATUS ;
 int TG3_APE_SEG_SIG ;
 int tg3_ape_read32 (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;

__attribute__((used)) static void tg3_probe_ncsi(struct tg3 *tp)
{
 u32 apedata;

 apedata = tg3_ape_read32(tp, TG3_APE_SEG_SIG);
 if (apedata != APE_SEG_SIG_MAGIC)
  return;

 apedata = tg3_ape_read32(tp, TG3_APE_FW_STATUS);
 if (!(apedata & APE_FW_STATUS_READY))
  return;

 if (tg3_ape_read32(tp, TG3_APE_FW_FEATURES) & TG3_APE_FW_FEATURE_NCSI)
  tg3_flag_set(tp, APE_HAS_NCSI);
}

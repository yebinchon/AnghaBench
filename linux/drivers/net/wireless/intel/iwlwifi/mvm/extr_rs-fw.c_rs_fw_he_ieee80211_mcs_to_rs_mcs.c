
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BIT (int ) ;




 int IWL_TLC_MNG_HT_RATE_MCS11 ;
 int IWL_TLC_MNG_HT_RATE_MCS7 ;
 int IWL_TLC_MNG_HT_RATE_MCS9 ;
 int WARN (int,char*,int) ;

__attribute__((used)) static u16 rs_fw_he_ieee80211_mcs_to_rs_mcs(u16 mcs)
{
 switch (mcs) {
 case 129:
  return BIT(IWL_TLC_MNG_HT_RATE_MCS7 + 1) - 1;
 case 128:
  return BIT(IWL_TLC_MNG_HT_RATE_MCS9 + 1) - 1;
 case 130:
  return BIT(IWL_TLC_MNG_HT_RATE_MCS11 + 1) - 1;
 case 131:
  return 0;
 }

 WARN(1, "invalid HE MCS %d\n", mcs);
 return 0;
}

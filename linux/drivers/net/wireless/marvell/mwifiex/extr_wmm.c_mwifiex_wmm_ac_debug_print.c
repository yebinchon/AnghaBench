
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_types_wmm_ac_parameters {int aci_aifsn_bitmap; int ecw_bitmap; int tx_op_limit; } ;


 int MWIFIEX_ACI ;
 int MWIFIEX_ACM ;
 int MWIFIEX_AIFSN ;
 int MWIFIEX_ECW_MAX ;
 int MWIFIEX_ECW_MIN ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,char const*,int,int,int,int,int,int ) ;
 size_t* wmm_aci_to_qidx_map ;

__attribute__((used)) static void
mwifiex_wmm_ac_debug_print(const struct ieee_types_wmm_ac_parameters *ac_param)
{
 const char *ac_str[] = { "BK", "BE", "VI", "VO" };

 pr_debug("info: WMM AC_%s: ACI=%d, ACM=%d, Aifsn=%d, "
   "EcwMin=%d, EcwMax=%d, TxopLimit=%d\n",
   ac_str[wmm_aci_to_qidx_map[(ac_param->aci_aifsn_bitmap
          & MWIFIEX_ACI) >> 5]],
   (ac_param->aci_aifsn_bitmap & MWIFIEX_ACI) >> 5,
   (ac_param->aci_aifsn_bitmap & MWIFIEX_ACM) >> 4,
   ac_param->aci_aifsn_bitmap & MWIFIEX_AIFSN,
   ac_param->ecw_bitmap & MWIFIEX_ECW_MIN,
   (ac_param->ecw_bitmap & MWIFIEX_ECW_MAX) >> 4,
   le16_to_cpu(ac_param->tx_op_limit));
}

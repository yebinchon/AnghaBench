
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;




 int TCA_CSUM_UPDATE_FLAG_TCP ;
 int TCA_CSUM_UPDATE_FLAG_UDP ;

__attribute__((used)) static u32 nfp_fl_csum_l4_to_flag(u8 ip_proto)
{
 switch (ip_proto) {
 case 0:



  return TCA_CSUM_UPDATE_FLAG_TCP | TCA_CSUM_UPDATE_FLAG_UDP;
 case 129:
  return TCA_CSUM_UPDATE_FLAG_TCP;
 case 128:
  return TCA_CSUM_UPDATE_FLAG_UDP;
 default:

  return 0;
 }
}

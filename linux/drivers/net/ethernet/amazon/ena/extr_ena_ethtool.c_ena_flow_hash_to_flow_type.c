
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ENA_ADMIN_RSS_L2_DA ;
 int ENA_ADMIN_RSS_L3_DA ;
 int ENA_ADMIN_RSS_L3_SA ;
 int ENA_ADMIN_RSS_L4_DP ;
 int ENA_ADMIN_RSS_L4_SP ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L2DA ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;

__attribute__((used)) static u32 ena_flow_hash_to_flow_type(u16 hash_fields)
{
 u32 data = 0;

 if (hash_fields & ENA_ADMIN_RSS_L2_DA)
  data |= RXH_L2DA;

 if (hash_fields & ENA_ADMIN_RSS_L3_DA)
  data |= RXH_IP_DST;

 if (hash_fields & ENA_ADMIN_RSS_L3_SA)
  data |= RXH_IP_SRC;

 if (hash_fields & ENA_ADMIN_RSS_L4_DP)
  data |= RXH_L4_B_2_3;

 if (hash_fields & ENA_ADMIN_RSS_L4_SP)
  data |= RXH_L4_B_0_1;

 return data;
}

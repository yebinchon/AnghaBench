
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MVPP2_TXD_IP_CSUM_DISABLE ;
 int MVPP2_TXD_IP_HLEN_SHIFT ;
 int MVPP2_TXD_L3_IP6 ;
 int MVPP2_TXD_L3_OFF_SHIFT ;
 int MVPP2_TXD_L4_CSUM_FRAG ;
 int MVPP2_TXD_L4_CSUM_NOT ;
 int MVPP2_TXD_L4_UDP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static u32 mvpp2_txq_desc_csum(int l3_offs, __be16 l3_proto,
          int ip_hdr_len, int l4_proto)
{
 u32 command;




 command = (l3_offs << MVPP2_TXD_L3_OFF_SHIFT);
 command |= (ip_hdr_len << MVPP2_TXD_IP_HLEN_SHIFT);
 command |= MVPP2_TXD_IP_CSUM_DISABLE;

 if (l3_proto == htons(ETH_P_IP)) {
  command &= ~MVPP2_TXD_IP_CSUM_DISABLE;
  command &= ~MVPP2_TXD_L3_IP6;
 } else {
  command |= MVPP2_TXD_L3_IP6;
 }

 if (l4_proto == IPPROTO_TCP) {
  command &= ~MVPP2_TXD_L4_UDP;
  command &= ~MVPP2_TXD_L4_CSUM_FRAG;
 } else if (l4_proto == IPPROTO_UDP) {
  command |= MVPP2_TXD_L4_UDP;
  command &= ~MVPP2_TXD_L4_CSUM_FRAG;
 } else {
  command |= MVPP2_TXD_L4_CSUM_NOT;
 }

 return command;
}

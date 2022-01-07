
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_P_IP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MVNETA_TXD_IP_CSUM ;
 int MVNETA_TX_IP_HLEN_SHIFT ;
 int MVNETA_TX_L3_IP6 ;
 int MVNETA_TX_L3_OFF_SHIFT ;
 int MVNETA_TX_L4_CSUM_FULL ;
 int MVNETA_TX_L4_CSUM_NOT ;
 int MVNETA_TX_L4_UDP ;
 int htons (int ) ;

__attribute__((used)) static u32 mvneta_txq_desc_csum(int l3_offs, int l3_proto,
    int ip_hdr_len, int l4_proto)
{
 u32 command;





 command = l3_offs << MVNETA_TX_L3_OFF_SHIFT;
 command |= ip_hdr_len << MVNETA_TX_IP_HLEN_SHIFT;

 if (l3_proto == htons(ETH_P_IP))
  command |= MVNETA_TXD_IP_CSUM;
 else
  command |= MVNETA_TX_L3_IP6;

 if (l4_proto == IPPROTO_TCP)
  command |= MVNETA_TX_L4_CSUM_FULL;
 else if (l4_proto == IPPROTO_UDP)
  command |= MVNETA_TX_L4_UDP | MVNETA_TX_L4_CSUM_FULL;
 else
  command |= MVNETA_TX_L4_CSUM_NOT;

 return command;
}

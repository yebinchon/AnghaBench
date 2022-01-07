
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int data; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct bnxt_tpa_info {int flags2; int hdr_info; } ;
typedef int __be16 ;


 int BNXT_TPA_INNER_L2_OFF (int ) ;
 int BNXT_TPA_INNER_L3_OFF (int ) ;
 int BNXT_TPA_OUTER_L3_OFF (int ) ;
 int ETH_HLEN ;
 int RX_TPA_START_CMP_FLAGS2_IP_TYPE ;
 int bnxt_gro_tunnel (struct sk_buff*,int ) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 int skb_set_transport_header (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *bnxt_gro_func_5750x(struct bnxt_tpa_info *tpa_info,
        int payload_off, int tcp_ts,
        struct sk_buff *skb)
{
 return skb;
}

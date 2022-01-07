
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ ip_summed; int protocol; } ;
struct qm_fd {int cmd; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int protocol; } ;
struct fman_prs_result {int* ip_off; int l4_off; int l4r; void* l3r; } ;
struct dpaa_priv {int net_dev; } ;
struct TYPE_2__ {int h_vlan_encapsulated_proto; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int EIO ;
 int ETH_P_8021Q ;


 int FM_FD_CMD_DTC ;
 int FM_FD_CMD_RPD ;
 int FM_L3_PARSE_RESULT_IPV4 ;
 int FM_L3_PARSE_RESULT_IPV6 ;
 int FM_L4_PARSE_RESULT_TCP ;
 int FM_L4_PARSE_RESULT_UDP ;


 int WARN_ON (int) ;
 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int net_ratelimit () ;
 int netif_alert (struct dpaa_priv*,int ,int ,char*,int) ;
 int ntohs (int ) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int tx_err ;
 TYPE_1__* vlan_eth_hdr (struct sk_buff*) ;

__attribute__((used)) static int dpaa_enable_tx_csum(struct dpaa_priv *priv,
          struct sk_buff *skb,
          struct qm_fd *fd,
          char *parse_results)
{
 struct fman_prs_result *parse_result;
 u16 ethertype = ntohs(skb->protocol);
 struct ipv6hdr *ipv6h = ((void*)0);
 struct iphdr *iph;
 int retval = 0;
 u8 l4_proto;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;
 parse_result = (struct fman_prs_result *)parse_results;


 if (ethertype == ETH_P_8021Q) {



  skb_reset_mac_header(skb);
  ethertype = ntohs(vlan_eth_hdr(skb)->h_vlan_encapsulated_proto);
 }




 switch (ethertype) {
 case 131:
  parse_result->l3r = cpu_to_be16(FM_L3_PARSE_RESULT_IPV4);
  iph = ip_hdr(skb);
  WARN_ON(!iph);
  l4_proto = iph->protocol;
  break;
 case 130:
  parse_result->l3r = cpu_to_be16(FM_L3_PARSE_RESULT_IPV6);
  ipv6h = ipv6_hdr(skb);
  WARN_ON(!ipv6h);
  l4_proto = ipv6h->nexthdr;
  break;
 default:

  if (net_ratelimit())
   netif_alert(priv, tx_err, priv->net_dev,
        "Can't compute HW csum for L3 proto 0x%x\n",
        ntohs(skb->protocol));
  retval = -EIO;
  goto return_error;
 }


 switch (l4_proto) {
 case 128:
  parse_result->l4r = FM_L4_PARSE_RESULT_UDP;
  break;
 case 129:
  parse_result->l4r = FM_L4_PARSE_RESULT_TCP;
  break;
 default:
  if (net_ratelimit())
   netif_alert(priv, tx_err, priv->net_dev,
        "Can't compute HW csum for L4 proto 0x%x\n",
        l4_proto);
  retval = -EIO;
  goto return_error;
 }


 parse_result->ip_off[0] = (u8)skb_network_offset(skb);
 parse_result->l4_off = (u8)skb_transport_offset(skb);


 fd->cmd |= cpu_to_be32(FM_FD_CMD_RPD | FM_FD_CMD_DTC);







return_error:
 return retval;
}

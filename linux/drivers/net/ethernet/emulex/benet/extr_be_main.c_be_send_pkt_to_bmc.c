
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct udphdr {int dest; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct icmp6hdr {int icmp6_type; } ;
struct ethhdr {int h_dest; } ;
struct be_adapter {int dummy; } ;





 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_ICMPV6 ;




 struct sk_buff* be_insert_vlan_in_pkt (struct be_adapter*,struct sk_buff*,int *) ;
 int be_is_os2bmc_enabled (struct be_adapter*) ;
 scalar_t__ htons (int ) ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ is_arp_allowed_on_bmc (struct be_adapter*,struct sk_buff*) ;
 scalar_t__ is_bc_allowed_on_bmc (struct be_adapter*,struct ethhdr*) ;
 int is_dhcp_client_filt_enabled (struct be_adapter*) ;
 int is_dhcp_srvr_filt_enabled (struct be_adapter*) ;
 int is_ipv6_na_filt_enabled (struct be_adapter*) ;
 int is_ipv6_ra_filt_enabled (struct be_adapter*) ;
 int is_ipv6_ras_filt_enabled (struct be_adapter*) ;
 scalar_t__ is_mc_allowed_on_bmc (struct be_adapter*,struct ethhdr*) ;
 int is_multicast_ether_addr (int ) ;
 int is_nbios_filt_enabled (struct be_adapter*) ;
 scalar_t__ is_udp_pkt (struct sk_buff*) ;
 int ntohs (int ) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static bool be_send_pkt_to_bmc(struct be_adapter *adapter,
          struct sk_buff **skb)
{
 struct ethhdr *eh = (struct ethhdr *)(*skb)->data;
 bool os2bmc = 0;

 if (!be_is_os2bmc_enabled(adapter))
  goto done;

 if (!is_multicast_ether_addr(eh->h_dest))
  goto done;

 if (is_mc_allowed_on_bmc(adapter, eh) ||
     is_bc_allowed_on_bmc(adapter, eh) ||
     is_arp_allowed_on_bmc(adapter, (*skb))) {
  os2bmc = 1;
  goto done;
 }

 if ((*skb)->protocol == htons(ETH_P_IPV6)) {
  struct ipv6hdr *hdr = ipv6_hdr((*skb));
  u8 nexthdr = hdr->nexthdr;

  if (nexthdr == IPPROTO_ICMPV6) {
   struct icmp6hdr *icmp6 = icmp6_hdr((*skb));

   switch (icmp6->icmp6_type) {
   case 130:
    os2bmc = is_ipv6_ra_filt_enabled(adapter);
    goto done;
   case 131:
    os2bmc = is_ipv6_na_filt_enabled(adapter);
    goto done;
   default:
    break;
   }
  }
 }

 if (is_udp_pkt((*skb))) {
  struct udphdr *udp = udp_hdr((*skb));

  switch (ntohs(udp->dest)) {
  case 133:
   os2bmc = is_dhcp_client_filt_enabled(adapter);
   goto done;
  case 132:
   os2bmc = is_dhcp_srvr_filt_enabled(adapter);
   goto done;
  case 129:
  case 128:
   os2bmc = is_nbios_filt_enabled(adapter);
   goto done;
  case 134:
   os2bmc = is_ipv6_ras_filt_enabled(adapter);
   goto done;
  default:
   break;
  }
 }
done:



 if (os2bmc)
  *skb = be_insert_vlan_in_pkt(adapter, *skb, ((void*)0));

 return os2bmc;
}

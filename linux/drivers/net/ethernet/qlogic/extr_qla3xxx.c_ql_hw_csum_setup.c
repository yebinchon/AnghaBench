
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ob_mac_iocb_req {int flags1; int ip_hdr_len; int ip_hdr_off; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;


 scalar_t__ IPPROTO_TCP ;
 int OB_3032MAC_IOCB_REQ_IC ;
 int OB_3032MAC_IOCB_REQ_TC ;
 int OB_3032MAC_IOCB_REQ_UC ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 int skb_network_offset (struct sk_buff const*) ;

__attribute__((used)) static void ql_hw_csum_setup(const struct sk_buff *skb,
        struct ob_mac_iocb_req *mac_iocb_ptr)
{
 const struct iphdr *ip = ip_hdr(skb);

 mac_iocb_ptr->ip_hdr_off = skb_network_offset(skb);
 mac_iocb_ptr->ip_hdr_len = ip->ihl;

 if (ip->protocol == IPPROTO_TCP) {
  mac_iocb_ptr->flags1 |= OB_3032MAC_IOCB_REQ_TC |
   OB_3032MAC_IOCB_REQ_IC;
 } else {
  mac_iocb_ptr->flags1 |= OB_3032MAC_IOCB_REQ_UC |
   OB_3032MAC_IOCB_REQ_IC;
 }

}

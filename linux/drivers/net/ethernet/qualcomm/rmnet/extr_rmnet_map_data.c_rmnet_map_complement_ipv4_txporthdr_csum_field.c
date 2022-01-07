
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iphdr {int ihl; scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ rmnet_map_get_csum_field (scalar_t__,void*) ;

__attribute__((used)) static void rmnet_map_complement_ipv4_txporthdr_csum_field(void *iphdr)
{
 struct iphdr *ip4h = (struct iphdr *)iphdr;
 void *txphdr;
 u16 *csum;

 txphdr = iphdr + ip4h->ihl * 4;

 if (ip4h->protocol == IPPROTO_TCP || ip4h->protocol == IPPROTO_UDP) {
  csum = (u16 *)rmnet_map_get_csum_field(ip4h->protocol, txphdr);
  *csum = ~(*csum);
 }
}

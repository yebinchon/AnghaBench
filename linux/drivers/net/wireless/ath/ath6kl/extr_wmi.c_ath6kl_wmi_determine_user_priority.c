
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iphdr {int tos; } ;



u8 ath6kl_wmi_determine_user_priority(u8 *pkt, u32 layer2_pri)
{
 struct iphdr *ip_hdr = (struct iphdr *) pkt;
 u8 ip_pri;
 ip_pri = ip_hdr->tos >> 5;
 ip_pri &= 0x7;

 if ((layer2_pri & 0x7) > ip_pri)
  return (u8) layer2_pri & 0x7;
 else
  return ip_pri;
}

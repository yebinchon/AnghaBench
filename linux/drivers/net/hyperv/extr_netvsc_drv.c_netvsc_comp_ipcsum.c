
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct iphdr {int ihl; scalar_t__ check; } ;


 scalar_t__ ip_fast_csum (struct iphdr*,int ) ;

__attribute__((used)) static void netvsc_comp_ipcsum(struct sk_buff *skb)
{
 struct iphdr *iph = (struct iphdr *)skb->data;

 iph->check = 0;
 iph->check = ip_fast_csum(iph, iph->ihl);
}

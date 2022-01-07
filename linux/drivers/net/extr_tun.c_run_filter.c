
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_filter {int count; int mask; int * addr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; } ;


 int addr_hash_test (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static int run_filter(struct tap_filter *filter, const struct sk_buff *skb)
{


 struct ethhdr *eh = (struct ethhdr *) skb->data;
 int i;


 for (i = 0; i < filter->count; i++)
  if (ether_addr_equal(eh->h_dest, filter->addr[i]))
   return 1;


 if (is_multicast_ether_addr(eh->h_dest))
  return addr_hash_test(filter->mask, eh->h_dest);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlan_list {TYPE_1__* buffer; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned long address; } ;


 unsigned long upper_32_bits (unsigned long) ;

__attribute__((used)) static inline void
tlan_store_skb(struct tlan_list *tag, struct sk_buff *skb)
{
 unsigned long addr = (unsigned long)skb;
 tag->buffer[9].address = addr;
 tag->buffer[8].address = upper_32_bits(addr);
}

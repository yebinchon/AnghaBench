
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlan_list {TYPE_1__* buffer; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned long address; } ;



__attribute__((used)) static inline struct sk_buff *
tlan_get_skb(const struct tlan_list *tag)
{
 unsigned long addr;

 addr = tag->buffer[9].address;
 addr |= ((unsigned long) tag->buffer[8].address << 16) << 16;
 return (struct sk_buff *) addr;
}

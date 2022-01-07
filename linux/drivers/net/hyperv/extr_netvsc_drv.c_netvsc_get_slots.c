
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {char* data; } ;


 int DIV_ROUND_UP (unsigned int,int ) ;
 int PAGE_SIZE ;
 int count_skb_frag_slots (struct sk_buff*) ;
 unsigned int offset_in_page (char*) ;
 unsigned int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static int netvsc_get_slots(struct sk_buff *skb)
{
 char *data = skb->data;
 unsigned int offset = offset_in_page(data);
 unsigned int len = skb_headlen(skb);
 int slots;
 int frag_slots;

 slots = DIV_ROUND_UP(offset + len, PAGE_SIZE);
 frag_slots = count_skb_frag_slots(skb);
 return slots + frag_slots;
}

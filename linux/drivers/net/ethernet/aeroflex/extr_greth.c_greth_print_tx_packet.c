
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int,int) ;
 int skb_frag_address (int *) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void greth_print_tx_packet(struct sk_buff *skb)
{
 int i;
 int length;

 if (skb_shinfo(skb)->nr_frags == 0)
  length = skb->len;
 else
  length = skb_headlen(skb);

 print_hex_dump(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
   skb->data, length, 1);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {

  print_hex_dump(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
          skb_frag_address(&skb_shinfo(skb)->frags[i]),
          skb_frag_size(&skb_shinfo(skb)->frags[i]), 1);
 }
}

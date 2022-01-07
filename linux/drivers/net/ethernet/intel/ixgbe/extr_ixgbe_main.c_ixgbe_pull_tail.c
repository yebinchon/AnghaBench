
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int data_len; unsigned int tail; int dev; } ;
struct ixgbe_ring {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int * frags; } ;


 int ALIGN (unsigned int,int) ;
 int IXGBE_RX_HDR_SIZE ;
 unsigned int eth_get_headlen (int ,unsigned char*,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int ) ;
 unsigned char* skb_frag_address (int *) ;
 int skb_frag_off_add (int *,unsigned int) ;
 int skb_frag_size_sub (int *,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
       struct sk_buff *skb)
{
 skb_frag_t *frag = &skb_shinfo(skb)->frags[0];
 unsigned char *va;
 unsigned int pull_len;






 va = skb_frag_address(frag);





 pull_len = eth_get_headlen(skb->dev, va, IXGBE_RX_HDR_SIZE);


 skb_copy_to_linear_data(skb, va, ALIGN(pull_len, sizeof(long)));


 skb_frag_size_sub(frag, pull_len);
 skb_frag_off_add(frag, pull_len);
 skb->data_len -= pull_len;
 skb->tail += pull_len;
}

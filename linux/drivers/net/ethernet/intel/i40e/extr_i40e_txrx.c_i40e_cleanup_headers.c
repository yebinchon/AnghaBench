
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i40e_rx_desc {int dummy; } i40e_rx_desc ;
struct sk_buff {int dummy; } ;
struct i40e_ring {int dummy; } ;


 int BIT (int ) ;
 int I40E_RXD_QW1_ERROR_SHIFT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ eth_skb_pad (struct sk_buff*) ;
 int i40e_test_staterr (union i40e_rx_desc*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
     union i40e_rx_desc *rx_desc)

{

 if (IS_ERR(skb))
  return 1;






 if (unlikely(i40e_test_staterr(rx_desc,
           BIT(I40E_RXD_QW1_ERROR_SHIFT)))) {
  dev_kfree_skb_any(skb);
  return 1;
 }


 if (eth_skb_pad(skb))
  return 1;

 return 0;
}

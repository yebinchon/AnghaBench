
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct igb_ring {int count; } ;
struct igb_adapter {struct igb_ring test_rx_ring; struct igb_ring test_tx_ring; } ;
typedef int netdev_tx_t ;


 int GFP_KERNEL ;
 unsigned int IGB_RX_HDR_LEN ;
 int NETDEV_TX_OK ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int igb_clean_test_rings (struct igb_ring*,struct igb_ring*,unsigned int) ;
 int igb_create_lbtest_frame (struct sk_buff*,unsigned int) ;
 int igb_xmit_frame_ring (struct sk_buff*,struct igb_ring*) ;
 int kfree_skb (struct sk_buff*) ;
 int msleep (int) ;
 int skb_get (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int igb_run_loopback_test(struct igb_adapter *adapter)
{
 struct igb_ring *tx_ring = &adapter->test_tx_ring;
 struct igb_ring *rx_ring = &adapter->test_rx_ring;
 u16 i, j, lc, good_cnt;
 int ret_val = 0;
 unsigned int size = IGB_RX_HDR_LEN;
 netdev_tx_t tx_ret_val;
 struct sk_buff *skb;


 skb = alloc_skb(size, GFP_KERNEL);
 if (!skb)
  return 11;


 igb_create_lbtest_frame(skb, size);
 skb_put(skb, size);






 if (rx_ring->count <= tx_ring->count)
  lc = ((tx_ring->count / 64) * 2) + 1;
 else
  lc = ((rx_ring->count / 64) * 2) + 1;

 for (j = 0; j <= lc; j++) {

  good_cnt = 0;


  for (i = 0; i < 64; i++) {
   skb_get(skb);
   tx_ret_val = igb_xmit_frame_ring(skb, tx_ring);
   if (tx_ret_val == NETDEV_TX_OK)
    good_cnt++;
  }

  if (good_cnt != 64) {
   ret_val = 12;
   break;
  }


  msleep(200);

  good_cnt = igb_clean_test_rings(rx_ring, tx_ring, size);
  if (good_cnt != 64) {
   ret_val = 13;
   break;
  }
 }


 kfree_skb(skb);

 return ret_val;
}

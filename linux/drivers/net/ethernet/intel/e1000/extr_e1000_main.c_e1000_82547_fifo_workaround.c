
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct e1000_adapter {scalar_t__ tx_fifo_size; scalar_t__ tx_fifo_head; scalar_t__ link_duplex; int tx_fifo_stall; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 scalar_t__ E1000_82547_PAD_LEN ;
 scalar_t__ E1000_FIFO_HDR ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static int e1000_82547_fifo_workaround(struct e1000_adapter *adapter,
           struct sk_buff *skb)
{
 u32 fifo_space = adapter->tx_fifo_size - adapter->tx_fifo_head;
 u32 skb_fifo_len = skb->len + E1000_FIFO_HDR;

 skb_fifo_len = ALIGN(skb_fifo_len, E1000_FIFO_HDR);

 if (adapter->link_duplex != HALF_DUPLEX)
  goto no_fifo_stall_required;

 if (atomic_read(&adapter->tx_fifo_stall))
  return 1;

 if (skb_fifo_len >= (E1000_82547_PAD_LEN + fifo_space)) {
  atomic_set(&adapter->tx_fifo_stall, 1);
  return 1;
 }

no_fifo_stall_required:
 adapter->tx_fifo_head += skb_fifo_len;
 if (adapter->tx_fifo_head >= adapter->tx_fifo_size)
  adapter->tx_fifo_head -= adapter->tx_fifo_size;
 return 0;
}

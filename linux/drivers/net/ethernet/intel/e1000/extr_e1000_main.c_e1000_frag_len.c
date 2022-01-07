
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct e1000_adapter {int rx_buffer_len; } ;


 int E1000_HEADROOM ;
 unsigned int SKB_DATA_ALIGN (int) ;

__attribute__((used)) static unsigned int e1000_frag_len(const struct e1000_adapter *a)
{
 return SKB_DATA_ALIGN(a->rx_buffer_len + E1000_HEADROOM) +
  SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
}

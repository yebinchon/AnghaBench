
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct atl1c_recv_ret_status {int dummy; } ;
struct atl1c_adapter {int dummy; } ;


 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void atl1c_rx_checksum(struct atl1c_adapter *adapter,
    struct sk_buff *skb, struct atl1c_recv_ret_status *prrs)
{





 skb_checksum_none_assert(skb);
}

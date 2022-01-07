
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct efx_nic {int dummy; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int netif_receive_skb (struct sk_buff*) ;

__attribute__((used)) static inline void efx_ptp_process_rx(struct efx_nic *efx, struct sk_buff *skb)
{
 local_bh_disable();
 netif_receive_skb(skb);
 local_bh_enable();
}

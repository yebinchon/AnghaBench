
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int offload_fwd_mark; } ;


 void mlxsw_sp_rx_listener_no_mark_func (struct sk_buff*,int ,void*) ;

__attribute__((used)) static void mlxsw_sp_rx_listener_mark_func(struct sk_buff *skb, u8 local_port,
        void *priv)
{
 skb->offload_fwd_mark = 1;
 return mlxsw_sp_rx_listener_no_mark_func(skb, local_port, priv);
}

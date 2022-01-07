
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_dst_cache; } ;
struct sk_buff {struct sock* sk; } ;
struct net_device_context {int* tx_table; } ;
struct net_device {int dummy; } ;


 int VRSS_SEND_TAB_SIZE ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_get_hash (struct sk_buff*,struct net_device_context const*) ;
 scalar_t__ rcu_access_pointer (int ) ;
 scalar_t__ sk_fullsock (struct sock*) ;
 int sk_tx_queue_set (struct sock*,int) ;

__attribute__((used)) static inline int netvsc_get_tx_queue(struct net_device *ndev,
          struct sk_buff *skb, int old_idx)
{
 const struct net_device_context *ndc = netdev_priv(ndev);
 struct sock *sk = skb->sk;
 int q_idx;

 q_idx = ndc->tx_table[netvsc_get_hash(skb, ndc) &
         (VRSS_SEND_TAB_SIZE - 1)];


 if (q_idx != old_idx &&
     sk && sk_fullsock(sk) && rcu_access_pointer(sk->sk_dst_cache))
  sk_tx_queue_set(sk, q_idx);

 return q_idx;
}

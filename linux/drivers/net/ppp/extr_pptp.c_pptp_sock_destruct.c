
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_dst_cache; int sk_receive_queue; } ;


 int PPPOX_DEAD ;
 int del_chan (int ) ;
 int dst_release (int ) ;
 int pppox_sk (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int rcu_dereference_protected (int ,int) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void pptp_sock_destruct(struct sock *sk)
{
 if (!(sk->sk_state & PPPOX_DEAD)) {
  del_chan(pppox_sk(sk));
  pppox_unbind_sock(sk);
 }
 skb_queue_purge(&sk->sk_receive_queue);
 dst_release(rcu_dereference_protected(sk->sk_dst_cache, 1));
}

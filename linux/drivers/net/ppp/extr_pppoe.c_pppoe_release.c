
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; int sk_state; } ;
struct TYPE_2__ {int remote; int sid; } ;
struct pppox_sock {int pppoe_ifindex; TYPE_1__ pppoe_pa; int * pppoe_dev; } ;
struct pppoe_net {int dummy; } ;
struct net {int dummy; } ;


 int EBADF ;
 int PPPOX_DEAD ;
 int SOCK_DEAD ;
 int delete_item (struct pppoe_net*,int ,int ,int ) ;
 int dev_put (int *) ;
 int lock_sock (struct sock*) ;
 struct pppoe_net* pppoe_pernet (struct net*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_queue_purge (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 struct net* sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppoe_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct pppox_sock *po;
 struct pppoe_net *pn;
 struct net *net = ((void*)0);

 if (!sk)
  return 0;

 lock_sock(sk);
 if (sock_flag(sk, SOCK_DEAD)) {
  release_sock(sk);
  return -EBADF;
 }

 po = pppox_sk(sk);

 if (po->pppoe_dev) {
  dev_put(po->pppoe_dev);
  po->pppoe_dev = ((void*)0);
 }

 pppox_unbind_sock(sk);


 sk->sk_state = PPPOX_DEAD;

 net = sock_net(sk);
 pn = pppoe_pernet(net);





 delete_item(pn, po->pppoe_pa.sid, po->pppoe_pa.remote,
      po->pppoe_ifindex);

 sock_orphan(sk);
 sock->sk = ((void*)0);

 skb_queue_purge(&sk->sk_receive_queue);
 release_sock(sk);
 sock_put(sk);

 return 0;
}

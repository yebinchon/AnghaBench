
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int * ops; int state; } ;
struct sock {int sk_destruct; int sk_protocol; int sk_family; int sk_type; int sk_state; int sk_backlog_rcv; } ;
struct pptp_opt {int seq_recv; int ack_sent; scalar_t__ ack_recv; scalar_t__ seq_sent; } ;
struct TYPE_2__ {struct pptp_opt pptp; } ;
struct pppox_sock {TYPE_1__ proto; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PF_PPPOX ;
 int PPPOX_NONE ;
 int PX_PROTO_PPTP ;
 int SOCK_STREAM ;
 int SS_UNCONNECTED ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int pptp_ops ;
 int pptp_rcv_core ;
 int pptp_sk_proto ;
 int pptp_sock_destruct ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int pptp_create(struct net *net, struct socket *sock, int kern)
{
 int error = -ENOMEM;
 struct sock *sk;
 struct pppox_sock *po;
 struct pptp_opt *opt;

 sk = sk_alloc(net, PF_PPPOX, GFP_KERNEL, &pptp_sk_proto, kern);
 if (!sk)
  goto out;

 sock_init_data(sock, sk);

 sock->state = SS_UNCONNECTED;
 sock->ops = &pptp_ops;

 sk->sk_backlog_rcv = pptp_rcv_core;
 sk->sk_state = PPPOX_NONE;
 sk->sk_type = SOCK_STREAM;
 sk->sk_family = PF_PPPOX;
 sk->sk_protocol = PX_PROTO_PPTP;
 sk->sk_destruct = pptp_sock_destruct;

 po = pppox_sk(sk);
 opt = &po->proto.pptp;

 opt->seq_sent = 0; opt->seq_recv = 0xffffffff;
 opt->ack_recv = 0; opt->ack_sent = 0xffffffff;

 error = 0;
out:
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nfp_crypto_req_add_front {int l4_proto; } ;
struct nfp_crypto_req_add_back {int dst_port; int src_port; } ;
struct inet_sock {int inet_sport; int inet_dport; } ;


 int IPPROTO_TCP ;
 int TLS_OFFLOAD_CTX_DIR_TX ;
 struct inet_sock* inet_sk (struct sock*) ;

__attribute__((used)) static void
nfp_net_tls_set_l4(struct nfp_crypto_req_add_front *front,
     struct nfp_crypto_req_add_back *back, struct sock *sk,
     int direction)
{
 struct inet_sock *inet = inet_sk(sk);

 front->l4_proto = IPPROTO_TCP;

 if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
  back->src_port = 0;
  back->dst_port = 0;
 } else {
  back->src_port = inet->inet_dport;
  back->dst_port = inet->inet_sport;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_add_back {int dummy; } ;
struct TYPE_2__ {int key_len; } ;
struct nfp_crypto_req_add_v4 {struct nfp_crypto_req_add_back back; int dst_ip; int src_ip; TYPE_1__ front; } ;
struct inet_sock {int inet_saddr; int inet_daddr; } ;
typedef int __be32 ;


 int TLS_OFFLOAD_CTX_DIR_TX ;
 struct inet_sock* inet_sk (struct sock*) ;
 int nfp_net_tls_assign_conn_id (struct nfp_net*,TYPE_1__*) ;

__attribute__((used)) static struct nfp_crypto_req_add_back *
nfp_net_tls_set_ipv4(struct nfp_net *nn, struct nfp_crypto_req_add_v4 *req,
       struct sock *sk, int direction)
{
 struct inet_sock *inet = inet_sk(sk);

 req->front.key_len += sizeof(__be32) * 2;

 if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
  nfp_net_tls_assign_conn_id(nn, &req->front);
 } else {
  req->src_ip = inet->inet_daddr;
  req->dst_ip = inet->inet_saddr;
 }

 return &req->back;
}

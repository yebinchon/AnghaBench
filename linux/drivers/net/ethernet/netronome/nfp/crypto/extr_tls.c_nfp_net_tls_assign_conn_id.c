
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct nfp_net {int ktls_conn_id_gen; } ;
struct nfp_crypto_req_add_front {scalar_t__ l3_addrs; scalar_t__ key_len; } ;
typedef int id ;


 scalar_t__ NFP_NET_TLS_NON_ADDR_KEY_LEN ;
 int atomic64_inc_return (int *) ;
 int memcpy (scalar_t__,int *,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void
nfp_net_tls_assign_conn_id(struct nfp_net *nn,
      struct nfp_crypto_req_add_front *front)
{
 u32 len;
 u64 id;

 id = atomic64_inc_return(&nn->ktls_conn_id_gen);
 len = front->key_len - NFP_NET_TLS_NON_ADDR_KEY_LEN;

 memcpy(front->l3_addrs, &id, sizeof(id));
 memset(front->l3_addrs + sizeof(id), 0, len - sizeof(id));
}

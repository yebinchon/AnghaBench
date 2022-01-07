
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ktls_tx; } ;
struct nfp_net {int ktls_tx_conn_cnt; int ktls_rx_conn_cnt; TYPE_1__ dp; } ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC ;
 int NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC ;
 int TLS_OFFLOAD_CTX_DIR_TX ;
 int nfp_net_crypto_set_op (struct nfp_net*,int ,int) ;

__attribute__((used)) static bool
__nfp_net_tls_conn_cnt_changed(struct nfp_net *nn, int add,
          enum tls_offload_ctx_dir direction)
{
 u8 opcode;
 int cnt;

 if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
  opcode = NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC;
  nn->ktls_tx_conn_cnt += add;
  cnt = nn->ktls_tx_conn_cnt;
  nn->dp.ktls_tx = !!nn->ktls_tx_conn_cnt;
 } else {
  opcode = NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC;
  nn->ktls_rx_conn_cnt += add;
  cnt = nn->ktls_rx_conn_cnt;
 }


 if (cnt > 1)
  return 0;

 nfp_net_crypto_set_op(nn, opcode, cnt);
 return 1;
}

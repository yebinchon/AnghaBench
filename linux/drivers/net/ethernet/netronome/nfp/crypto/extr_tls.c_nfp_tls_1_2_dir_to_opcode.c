
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC ;
 int NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static u8 nfp_tls_1_2_dir_to_opcode(enum tls_offload_ctx_dir direction)
{
 switch (direction) {
 case 128:
  return NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC;
 case 129:
  return NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC;
 default:
  WARN_ON_ONCE(1);
  return 0;
 }
}

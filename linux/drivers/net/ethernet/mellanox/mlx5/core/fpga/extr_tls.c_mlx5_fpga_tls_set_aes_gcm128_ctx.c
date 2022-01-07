
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_crypto_info {int dummy; } ;
struct tls12_crypto_info_aes_gcm_128 {int key; int salt; int rec_seq; } ;
typedef int __be64 ;


 scalar_t__ MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_TLS_ALG_AES_GCM_128 ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_KEY_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_SALT_SIZE ;
 int alg ;
 int encryption_key ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int tls_cmd ;
 int tls_implicit_iv ;
 int tls_rcd_sn ;

__attribute__((used)) static void mlx5_fpga_tls_set_aes_gcm128_ctx(void *cmd,
          struct tls_crypto_info *info,
          __be64 *rcd_sn)
{
 struct tls12_crypto_info_aes_gcm_128 *crypto_info =
     (struct tls12_crypto_info_aes_gcm_128 *)info;

 memcpy(MLX5_ADDR_OF(tls_cmd, cmd, tls_rcd_sn), crypto_info->rec_seq,
        TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE);

 memcpy(MLX5_ADDR_OF(tls_cmd, cmd, tls_implicit_iv),
        crypto_info->salt, TLS_CIPHER_AES_GCM_128_SALT_SIZE);
 memcpy(MLX5_ADDR_OF(tls_cmd, cmd, encryption_key),
        crypto_info->key, TLS_CIPHER_AES_GCM_128_KEY_SIZE);


 memcpy(MLX5_ADDR_OF(tls_cmd, cmd, encryption_key) +
     TLS_CIPHER_AES_GCM_128_KEY_SIZE,
        crypto_info->key, TLS_CIPHER_AES_GCM_128_KEY_SIZE);

 MLX5_SET(tls_cmd, cmd, alg, MLX5_TLS_ALG_AES_GCM_128);
}

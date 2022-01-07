
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tls_crypto_info {int cipher_type; } ;
typedef int __be64 ;


 int EINVAL ;
 int MLX5_ACCEL_TLS_AES_GCM128 ;

 int mlx5_fpga_tls_set_aes_gcm128_ctx (void*,struct tls_crypto_info*,int *) ;

__attribute__((used)) static int mlx5_fpga_tls_set_key_material(void *cmd, u32 caps,
       struct tls_crypto_info *crypto_info)
{
 __be64 rcd_sn;

 switch (crypto_info->cipher_type) {
 case 128:
  if (!(caps & MLX5_ACCEL_TLS_AES_GCM128))
   return -EINVAL;
  mlx5_fpga_tls_set_aes_gcm128_ctx(cmd, crypto_info, &rcd_sn);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

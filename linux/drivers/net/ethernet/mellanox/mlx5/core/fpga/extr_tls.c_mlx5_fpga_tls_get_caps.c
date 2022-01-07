
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_fpga_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ACCEL_TLS_AES_GCM128 ;
 int MLX5_ACCEL_TLS_AES_GCM256 ;
 int MLX5_ACCEL_TLS_IPV6 ;
 int MLX5_ACCEL_TLS_LRO ;
 int MLX5_ACCEL_TLS_RX ;
 int MLX5_ACCEL_TLS_TX ;
 int MLX5_ACCEL_TLS_V12 ;
 int MLX5_ACCEL_TLS_V13 ;
 scalar_t__ MLX5_GET (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int aes_gcm_128 ;
 int aes_gcm_256 ;
 int ipv6 ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int lro ;
 int mlx5_fpga_get_sbu_caps (struct mlx5_fpga_device*,int,void*) ;
 int rx ;
 int tls_extended_cap ;
 int tls_v12 ;
 int tls_v13 ;
 int tx ;

__attribute__((used)) static int mlx5_fpga_tls_get_caps(struct mlx5_fpga_device *fdev,
      u32 *p_caps)
{
 int err, cap_size = MLX5_ST_SZ_BYTES(tls_extended_cap);
 u32 caps = 0;
 void *buf;

 buf = kzalloc(cap_size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 err = mlx5_fpga_get_sbu_caps(fdev, cap_size, buf);
 if (err)
  goto out;

 if (MLX5_GET(tls_extended_cap, buf, tx))
  caps |= MLX5_ACCEL_TLS_TX;
 if (MLX5_GET(tls_extended_cap, buf, rx))
  caps |= MLX5_ACCEL_TLS_RX;
 if (MLX5_GET(tls_extended_cap, buf, tls_v12))
  caps |= MLX5_ACCEL_TLS_V12;
 if (MLX5_GET(tls_extended_cap, buf, tls_v13))
  caps |= MLX5_ACCEL_TLS_V13;
 if (MLX5_GET(tls_extended_cap, buf, lro))
  caps |= MLX5_ACCEL_TLS_LRO;
 if (MLX5_GET(tls_extended_cap, buf, ipv6))
  caps |= MLX5_ACCEL_TLS_IPV6;

 if (MLX5_GET(tls_extended_cap, buf, aes_gcm_128))
  caps |= MLX5_ACCEL_TLS_AES_GCM128;
 if (MLX5_GET(tls_extended_cap, buf, aes_gcm_256))
  caps |= MLX5_ACCEL_TLS_AES_GCM256;

 *p_caps = caps;
 err = 0;
out:
 kfree(buf);
 return err;
}

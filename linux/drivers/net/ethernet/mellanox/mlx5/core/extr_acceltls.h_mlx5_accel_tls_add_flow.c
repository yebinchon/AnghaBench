
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tls_crypto_info {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static inline int
mlx5_accel_tls_add_flow(struct mlx5_core_dev *mdev, void *flow,
   struct tls_crypto_info *crypto_info,
   u32 start_offload_tcp_sn, u32 *p_swid,
   bool direction_sx) { return -ENOTSUPP; }

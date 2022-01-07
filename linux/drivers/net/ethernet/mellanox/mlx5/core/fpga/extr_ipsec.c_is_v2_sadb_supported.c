
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec {int caps; } ;


 scalar_t__ MLX5_GET (int ,int ,int ) ;
 int ipsec_extended_cap ;
 int v2_command ;

__attribute__((used)) static inline bool is_v2_sadb_supported(struct mlx5_fpga_ipsec *fipsec)
{
 if (MLX5_GET(ipsec_extended_cap, fipsec->caps, v2_command))
  return 1;
 return 0;
}

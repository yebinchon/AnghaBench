
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int spi; int dip; int sip; } ;
struct mlx5_ifc_fpga_ipsec_sa {TYPE_1__ ipsec_sa_v1; } ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_accel_esp_xfrm_attrs {int dummy; } ;
typedef int __be32 ;


 int MLX5_FPGA_IPSEC_SA_IPV6 ;
 int memcpy (int ,int const*,int) ;
 int mlx5_fpga_ipsec_build_hw_xfrm (struct mlx5_core_dev*,struct mlx5_accel_esp_xfrm_attrs*,struct mlx5_ifc_fpga_ipsec_sa*) ;

__attribute__((used)) static void
mlx5_fpga_ipsec_build_hw_sa(struct mlx5_core_dev *mdev,
       struct mlx5_accel_esp_xfrm_attrs *xfrm_attrs,
       const __be32 saddr[4],
       const __be32 daddr[4],
       const __be32 spi, bool is_ipv6,
       struct mlx5_ifc_fpga_ipsec_sa *hw_sa)
{
 mlx5_fpga_ipsec_build_hw_xfrm(mdev, xfrm_attrs, hw_sa);


 memcpy(hw_sa->ipsec_sa_v1.sip, saddr, sizeof(hw_sa->ipsec_sa_v1.sip));
 memcpy(hw_sa->ipsec_sa_v1.dip, daddr, sizeof(hw_sa->ipsec_sa_v1.dip));


 hw_sa->ipsec_sa_v1.spi = spi;


 if (is_ipv6)
  hw_sa->ipsec_sa_v1.flags |= MLX5_FPGA_IPSEC_SA_IPV6;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EINVAL ;
 int MLX5_GET (int ,int*,int ) ;
 int fec_override_cap_100g ;
 int fec_override_cap_10g_40g ;
 int fec_override_cap_25g ;
 int fec_override_cap_50g ;
 int fec_override_cap_56g ;
 int pplm_reg ;

__attribute__((used)) static int mlx5e_get_fec_cap_field(u32 *pplm,
       u8 *fec_cap,
       u32 speed)
{
 switch (speed) {
 case 10000:
 case 40000:
  *fec_cap = MLX5_GET(pplm_reg, pplm,
        fec_override_cap_10g_40g);
  break;
 case 25000:
  *fec_cap = MLX5_GET(pplm_reg, pplm,
        fec_override_cap_25g);
  break;
 case 50000:
  *fec_cap = MLX5_GET(pplm_reg, pplm,
        fec_override_cap_50g);
  break;
 case 56000:
  *fec_cap = MLX5_GET(pplm_reg, pplm,
        fec_override_cap_56g);
  break;
 case 100000:
  *fec_cap = MLX5_GET(pplm_reg, pplm,
        fec_override_cap_100g);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}

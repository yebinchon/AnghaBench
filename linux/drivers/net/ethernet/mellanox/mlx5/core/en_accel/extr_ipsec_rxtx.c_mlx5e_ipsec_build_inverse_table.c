
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;


 size_t MAX_LSO_MSS ;
 int div_u64 (unsigned long long,size_t) ;
 int htons (int) ;
 int * mlx5e_ipsec_inverse_table ;

void mlx5e_ipsec_build_inverse_table(void)
{
 u16 mss_inv;
 u32 mss;







 mlx5e_ipsec_inverse_table[1] = htons(0xFFFF);
 for (mss = 2; mss < MAX_LSO_MSS; mss++) {
  mss_inv = div_u64(1ULL << 32, mss) >> 16;
  mlx5e_ipsec_inverse_table[mss] = htons(mss_inv);
 }
}

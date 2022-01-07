
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int staterr; } ;
union fm10k_rx_desc {TYPE_1__ d; } ;
typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int const) ;

__attribute__((used)) static inline __le32 fm10k_test_staterr(union fm10k_rx_desc *rx_desc,
     const u32 stat_err_bits)
{
 return rx_desc->d.staterr & cpu_to_le32(stat_err_bits);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;

__attribute__((used)) static inline __le32 iwl_hw_set_rate_n_flags(u8 rate, u32 flags)
{
 return cpu_to_le32(flags|(u32)rate);
}

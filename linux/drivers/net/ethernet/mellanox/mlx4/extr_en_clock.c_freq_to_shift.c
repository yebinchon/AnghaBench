
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int MLX4_EN_WRAP_AROUND_SEC ;
 int ULLONG_MAX ;
 int div64_u64 (int ,int) ;
 int div_u64 (int,int) ;
 unsigned long long fls64 (int) ;
 int ilog2 (int ) ;

__attribute__((used)) static u32 freq_to_shift(u16 freq)
{
 u32 freq_khz = freq * 1000;
 u64 max_val_cycles = freq_khz * 1000 * MLX4_EN_WRAP_AROUND_SEC;
 u64 max_val_cycles_rounded = 1ULL << fls64(max_val_cycles - 1);

 u64 max_mul = div64_u64(ULLONG_MAX, max_val_cycles_rounded);


 return ilog2(div_u64(max_mul * freq_khz, 1000000));
}

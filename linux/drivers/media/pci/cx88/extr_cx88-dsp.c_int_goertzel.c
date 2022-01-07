
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
typedef int s64 ;
typedef int s32 ;
typedef int s16 ;


 int do_div (int,size_t) ;
 int int_cos (size_t) ;

__attribute__((used)) static u32 int_goertzel(s16 x[], u32 N, u32 freq)
{




 s32 s_prev = 0;
 s32 s_prev2 = 0;
 s32 coeff = 2 * int_cos(freq);
 u32 i;

 u64 tmp;
 u32 divisor;

 for (i = 0; i < N; i++) {
  s32 s = x[i] + ((s64)coeff * s_prev / 32768) - s_prev2;

  s_prev2 = s_prev;
  s_prev = s;
 }

 tmp = (s64)s_prev2 * s_prev2 + (s64)s_prev * s_prev -
        (s64)coeff * s_prev2 * s_prev / 32768;





 divisor = N * N;
 do_div(tmp, divisor);

 return (u32)tmp;
}

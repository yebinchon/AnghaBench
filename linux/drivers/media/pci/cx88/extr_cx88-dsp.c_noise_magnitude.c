
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 scalar_t__ int_goertzel (int *,int,int) ;
 int int_sqrt (int) ;

__attribute__((used)) static u32 noise_magnitude(s16 x[], u32 N, u32 freq_start, u32 freq_end)
{
 int i;
 u32 sum = 0;
 u32 freq_step;
 int samples = 5;

 if (N > 192) {

  x += (N - 192);
  N = 192;
 }

 freq_step = (freq_end - freq_start) / (samples - 1);

 for (i = 0; i < samples; i++) {
  sum += int_goertzel(x, N, freq_start);
  freq_start += freq_step;
 }

 return (u32)int_sqrt(sum / samples);
}

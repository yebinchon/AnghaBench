
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int int_goertzel (int *,int ,int ) ;
 int int_sqrt (int ) ;

__attribute__((used)) static u32 freq_magnitude(s16 x[], u32 N, u32 freq)
{
 u32 sum = int_goertzel(x, N, freq);

 return (u32)int_sqrt(sum);
}

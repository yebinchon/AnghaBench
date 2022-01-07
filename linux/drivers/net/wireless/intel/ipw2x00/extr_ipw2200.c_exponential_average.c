
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;



__attribute__((used)) static s16 exponential_average(s16 prev_avg, s16 val, u8 depth)
{
 return ((depth-1)*prev_avg + val)/depth;
}

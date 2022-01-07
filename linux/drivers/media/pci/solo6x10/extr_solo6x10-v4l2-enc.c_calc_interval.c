
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int min (unsigned int,int) ;

__attribute__((used)) static inline int calc_interval(u8 fps, u32 n, u32 d)
{
 if (!n || !d)
  return 1;
 if (d == fps)
  return n;
 n *= fps;
 return min(15U, n / d + (n % d >= (fps >> 1)));
}

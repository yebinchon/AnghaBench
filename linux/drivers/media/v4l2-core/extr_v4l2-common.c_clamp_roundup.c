
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int clamp_roundup(unsigned int x, unsigned int min,
       unsigned int max, unsigned int alignment)
{
 x = clamp(x, min, max);
 if (alignment)
  x = round_up(x, alignment);

 return x;
}

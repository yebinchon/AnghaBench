
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int bufsize ;
 unsigned int prandom_u32 () ;

__attribute__((used)) static int rand_offs(void)
{
 unsigned int offs;

 offs = prandom_u32();
 offs %= bufsize;
 return offs;
}
